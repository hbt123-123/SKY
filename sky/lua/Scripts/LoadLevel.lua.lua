__LevelObjects = __LevelObjects or {}

function RegisterLevelObjectsForHotDate(name, objects)
  __LevelObjects[name] = objects
end

function UnregisterLevelObjectsForHotDate(name)
  __LevelObjects[name] = nil
end

function HotDateLevelObject(hotDateType, levelName, objectName, objectData)
  assert(__LevelObjects[levelName], "Failed hot-dating " .. objectName .. " in " .. levelName .. ". Couldn't find level.")
  
  local function LookUpObject(name)
    return __LevelObjects[levelName]:GetObjectByName(name)
  end
  
  local object = LookUpObject(objectName)
  if not object then
    return
  end
  if hotDateType == "full" then
    LoadObject(levelName .. "." .. objectName, object, objectData.Vars, LookUpObject)
  elseif hotDateType == "transform" then
    SetObjectTransform(object, objectData)
  elseif hotDateType == "enable" then
    local action = objectData.action
    if action ~= nil then
      if action == "HotDateUser" then
        local methodName = objectData.methodName
        local param = objectData.param
        if methodName == nil or methodName == "" then
          methodName = "HotDateUser"
        end
        if object[methodName] then
          local method = object[methodName]
          if param == nil then
            param = ""
          end
          method(object, param)
        end
      else
      end
      return
    else
      local enable = objectData.enable
      if enable == nil then
        enable = true
      elseif enable == 0 then
        enable = false
      else
        enable = true
      end
      SetObjectEnabled(object, enable)
    end
  end
  if object.HotDate then
    object:HotDate()
  end
end

function LoadObject(fullObjectName, object, luaData, LookUpObject)
  for varName, var in pairs(object.__vars) do
    local luaValue = luaData[varName]
    if luaValue ~= nil then
      local success, msg = pcall(LoadValue, fullObjectName, object, varName, luaValue, LookUpObject)
      if not success then
        print("*** WARNING: Failed hot dating " .. fullObjectName .. "." .. varName .. " with value: " .. tostring(luaValue) .. ".")
        print("             Error: " .. msg)
      end
    end
  end
end

function LoadValue(fullObjectName, object, varName, luaValue, LookUpObject)
  local var = object[varName]
  if not var.__isclass then
    var(object, luaValue)
  elseif not var.__len then
    local oldValue = var(object)
    local ptrValue = LoadObjectPtr(var, luaValue, LookUpObject, oldValue)
    if ptrValue ~= nil or var.__metadata.Tool_Nullable then
      var(object, ptrValue)
    end
  else
    local allocator = var.__metadata.ArrayAllocator
    local count = #luaValue
    object[allocator](object, count)
    assert(var.__len(object) == count)
    for i = 1, count do
      if type(luaValue[i]) == "table" then
        local elem = var[i % 1](object)
        local elemName = fullObjectName .. "." .. varName .. "[ " .. i .. " ]"
        LoadObject(elemName, elem, luaValue[i], LookUpObject)
      else
        local oldValue = var[i % 1](object)
        local ptrValue = LoadObjectPtr(var, luaValue[i], LookUpObject, oldValue)
        if ptrValue ~= nil or var.__metadata.Tool_Nullable then
          var[i % 1](object, ptrValue)
        end
      end
    end
  end
end

function LoadObjectPtr(var, luaValue, LookUpObject, oldValue)
  local ptrValue
  if type(luaValue) == "string" then
    ptrValue = LookUpObject(luaValue)
  end
  if ptrValue and ptrValue ~= nil and not _G[var.__ctype].cast(ptrValue) then
    if var.__ctype == "Clump" then
      local clumpType = var.__metadata.Tool_ClumpType
      assert(clumpType)
      if _G[clumpType] and _G[clumpType].cast(ptrValue) then
        if oldValue and _G.Clump.cast(oldValue) and oldValue:Size() == 1 then
          oldValue:SetAt(0, ptrValue)
          ptrValue = oldValue
        else
          local newClump = _G.game:clumpBarn():CreateClumpWithSize(1)
          newClump:SetAt(0, ptrValue)
          ptrValue = newClump
        end
      end
    else
      assert(false, "*** ERROR: pointer type mismatch. Expected " .. var.__ctype .. ", got " .. tostring(ptrValue))
    end
  end
  return ptrValue
end

__breakpoints = __breakpoints or {}
__breakpoints_FreeIds = __breakpoints_FreeIds or {}
__breakPoints_Error = __breakPoints_Error or ""

function GetBreakPointError()
  return __breakPoints_Error
end

function RegisterBreakpoint(levelName, guid, condition)
  __breakPoints_Error = ""
  condition = "return function(this) return " .. condition .. " end"
  local conditionId = 0
  local func, err = load(condition)
  if not func then
    __breakPoints_Error = "Load error:" .. err
    return conditionId
  end
  local status, result = pcall(func)
  if not status then
    __breakPoints_Error = "Compile error:" .. result
    return conditionId
  end
  if #__breakpoints_FreeIds == 0 then
    conditionId = #__breakpoints / 1
  else
    conditionId = table.remove(__breakpoints_FreeIds, #__breakpoints_FreeIds)
  end
  __breakpoints[conditionId] = {
    levelName,
    "BstNode_" .. guid,
    result
  }
  return conditionId
end

function UnregisterBreakpoint(conditionId)
  if __breakpoints[conditionId] ~= nil then
    __breakpoints[conditionId] = nil
    table.insert(__breakpoints_FreeIds, conditionId)
  end
  return 0
end

function CheckBreakPoint(conditionId)
  __breakPoints_Error = ""
  local data = __breakpoints[conditionId]
  if data == nil then
    return -1
  end
  local levelObjects = __LevelObjects[data[1]]
  if levelObjects == nil then
    return -2
  end
  local levelObject = levelObjects:GetObjectByName(data[2])
  if levelObject == nil then
    return -3
  end
  local status, result = pcall(data[3], levelObject)
  if not status then
    __breakPoints_Error = "Execution error:" .. result
    return -4
  end
  if result == true then
    return 1
  else
    return 0
  end
end

function EnableBstNode(guid, level)
  if not level then
    for k, _ in pairs(__LevelObjects) do
      level = k
      break
    end
  end
  HotDateLevelObject("enable", level, "BstNode_" .. guid, {enable = 1})
end

function DisableBstNode(guid, level)
  if not level then
    for k, _ in pairs(__LevelObjects) do
      level = k
      break
    end
  end
  HotDateLevelObject("enable", level, "BstNode_" .. guid, {enable = 0})
end
