# Sky（光·遇）核心逻辑研究报告

> 样本：网易国服 Android 包 `Sky-0.16.7-421589-android.apk`（`com.netease.sky`，versionCode 421589，2.06 GB）
> 分析方式：静态反编译（JADX 清单 + Ghidra / 二进制特征 + 自研 Lua 5.2 魔改反编译器），未运行游戏进程。
> 版权提示：光·遇由 thatgamecompany 开发、网易代理。本文与同目录素材仅用于个人学习与格式研究，**不得再分发，也不可直接用于商业作品**；复刻作品必须使用原创美术与音频。

---

## 1. 结论速览

| 问题 | 结论 |
|---|---|
| 引擎 | TGC 自研 **Ancestor Engine**，全部核心逻辑编译进 `lib/arm64-v8a/libBootloader.so`（67.5 MB，ARM64，strip，1063 个导出动态符号） |
| 脚本 | 内嵌 **Lua 5.2**（网易补丁：4 字节字符串长度、自定义 opcode 排列；另有 lua-zlib / lua-cmsgpack） |
| 游戏逻辑分布 | **玩法规则主要在本机 C++ 子系统（引擎内以 `*Barn` 命名，共识别 170+ 个）**；Lua 只负责资源清单、关卡注册与少量胶水；**设计数值/内容全部由 `assets/Data/Resources/*.json` 数据表驱动** |
| 关卡 | 118 个 `Levels/<名>/`，每关三件套：`Objects.level.bin`（TGCL 对象摆位）、`BstBaked.meshes`（LVL0/GEO0/LOD0/METR 烘焙几何）、`Resources.lua`（资源清单） |
| 美术 | 874 个 KTX（Android = ETC2），7200 个 `.mesh`，163 个 `.animpack`，4500 个 SPIR-V 着色器 |
| 音频 | FMOD Studio bank（RIFF `FEV ` → 内嵌 FSB5，Vorbis），143 个 bank，约 9683 个采样流 |
| 服务端 | 网易 live-* 域名集群；账号/好友/联机/商店由服务端裁决，包内只有协议壳与数据表 |

一句话：**这是一个“引擎原生实现规则 + 数据表描述内容 + Lua 组织资源”的典型 TGC 架构**。要复刻，重点应放在数据模型与玩法循环，而不是照搬其二进制。

---

## 2. 运行时架构

```
Android Java (UniSDK 壳 / ProtocolLauncher)
        │ JNI
        ▼
libBootloader.so  ── Ancestor Engine（C++）
  ├─ VFS / ResourceBundle / RemoteResource / OrbitDownloader  资源与热更
  ├─ Lua 5.2 VM（定制字节码）── Boot.lua → Persistent.lua → AllLevelList → 关卡
  ├─ Scene / Level / Terrain / Render / Audio / Physics / Net
  └─ 170+ 个 *Barn 子系统（见 SOURCE_MODULES.md）
        ▲
        │ 数据驱动
assets/Data/Resources/*.json  +  Levels/*  +  Meshes/  + Images/  + Audio/
```

### 2.1 启动与资源加载链（实测）

1. `ProtocolLauncher`（`com.netease.ntunisdk.external.protocol.ProtocolLauncher`）接收登录/支付/协议回调，转入引擎。
2. `libBootloader.so` 挂载 `assets/Data`，初始化 Vulkan 渲染、FMOD、输入与网络。
3. Lua VM 执行 `Resources/Boot.lua`：
   - `SKY_ENABLE_RETAIL_DEMO` 环境开关；
   - 注册 `level(name, bundle, realm)` 等工厂函数；
   - 加载 `Persistent.lua`（**378 条 `resource(...)` 声明**，是全量资源索引）。
4. `Scripts/LevelSelect.lua` 通过 `resource("AllLevelList")("AllLevels")` 取得关卡列表；`resource("Script")("LevelSelect")` 注册关卡目录。
5. 进入关卡时加载：
   - `Levels/<关卡>/Objects.level.bin`（对象/标记/触发器的位置与参数）
   - `Levels/<关卡>/BstBaked.meshes`（烘焙地形与静态几何）
   - `Levels/<关卡>/Resources.lua`（该关卡资源引用）
6. 跨关卡/领域切换由 `LevelLinkBarn` / `PortalBarn` / `ConstellationGateBarn` / `StreamLevelLinkBarn` 承担；`OrbitDownloaderBarn` 负责流式加载（“轨道”过场即加载窗口）。

### 2.2 Lua 层实际职责（反编译 146/147 个文件后的判断）

- **不是**玩法主体：绝大多数 `.luac` 是资源清单（`MeshDefs`、`ImageDefs`、`UIPackedAtlas`、各关 `Resources.lua`）。
- 提供：关卡注册、资源别名、`Vars` 调试/调参开关（34 个子系统）、账号/网关接口（如 `Account.lua` 的 `SupportRecoverAccount`）。
- 引擎通过 SWIG 风格绑定暴露 `resource(path)(name)(table)` 这类 API；热更新只替换 Lua/资源，不发版。

---

## 3. 核心玩法逻辑（按子系统）

以下逻辑名来自反编译出的 `Vars.lua`（34 个子系统的调参表）与 `libBootloader.so` 中 170+ 个 `*Barn` 标识符——它们就是引擎的功能模块边界。

### 3.1 角色移动 / 飞行 / 攀爬

| 模块 | 职责（由参数与命名推定） |
|---|---|
| `StepController` | 步态/位移主控；`kGenerousJump`（宽容跳跃）、`kHulaHoop`、`kStrainBackFoot` 等手感参数 |
| `StepJump` / `StepMechanics` / `StepInput` / `StepInclude` | 跳跃、攀爬、翻滚等动作状态机与输入缓冲 |
| `FlightComputer` | 飞行/滑翔控制；`kAutoPitch`（自动俯仰），斗篷升力与能量消耗 |
| `AvatarLoco` | 角色位移动画混合（walk/run/glide/land），`kLogLoco` 调试 |
| `RailBarn` / `StreamRail` | 轨道滑行（云野/霞谷的“光轨”），沿曲线约束角色 |
| `CatenaryBarn` / `TubeBarn` / `TraversalDataBarn` | 绳索/管状路径/可穿越区域数据 |
| `CollisionGeoBarn` | 碰撞几何注册（地形/静态网格） |

**复刻要点**：把“地面行走、跳跃、滑翔、能量”拆成 4 个状态；滑翔用“俯仰→速度→升力”的简单气动模型即可获得接近手感；斗篷等级直接映射为升力/能耗系数。

### 3.2 外观 / 装扮（核心商业化与社交表达）

`OutfitDefs.json`（**1649 条**）是唯一权威装扮表，10 类：

| type | 数量 | 说明 |
|---|---|---|
| prop | 529 | 背饰/道具（乐器、伞、火盆等，含 `abilities` 社交动作） |
| body | 252 | 身体/服装 |
| wing | 219 | 斗篷/光翼外观 |
| hair | 206 | 发型 |
| mask | 131 | 面具 |
| hat | 105 | 帽子 |
| neck | 88 | 项链/领结 |
| horn | 43 | 角 |
| face | 38 | 面部 |
| feet | 38 | 鞋/裤 |

每条字段：`mesh / diffuseTex / attribTex / icon / shader / spiritShader / abilities / season / inCloset / upgrade_base / upgrade_type`。
`abilities` 是社交能力声明，例如 `{"event":"SocialInstrument","type":"melody"}`（乐器）、`{"event":"SocialPropMenu","prop_event":"Umbrella"}`（道具菜单）、`{"event":"SocialApplyBuff","type":"teleport_night_go_town"}`（传送）。
对应渲染子系统：`AvatarBarn`、`HeadMeshBarn`、`OutfitSelectBarn`、`SkirtBarn`（裙摆物理）、`FurBarn`（毛皮）、`TailBarn`、`DyeingClothBarn`（染色）、`WingBuffBarn`、`RadianceBarn`、`TrailBarn`/`WakeTrailBarn`（拖尾）。

### 3.3 光 / 蜡烛 / 货币 / 收集

| 资源 | 数据/模块 | 逻辑 |
|---|---|---|
| 烛火（wax） | `WaxChunkBarn`、`FlameBarn`、`CandleBarn` | 场景中的蜡堆/烛火，靠近自动收集，累积为蜡烛 |
| 蜡烛（candles） | 货币类型 `candles` | 通用货币，用于解锁装扮/道具 |
| 季节蜡烛（season_candle） | 季节任务奖励 | 季节期间限定货币 |
| 升华蜡烛（prestige_wax） | 献祭/伊甸奖励 | 用于解锁光翼/毕业礼 |
| 星之碎片（StarFragment） | `StarFragmentBarn` + 收集品 | 星座解锁进度 |
| 光翼（WingBuff） | `WingBuffBarn` | 提升斗篷等级（`capeLevel` 0–5）与飞行能力 |
| 可收集物 | `CollectibleDefs.json`（248 条） | 表情(emote 125)、任务给予者(50)、普通 NPC(29)、态度(14)、动作(14)、语音(12)、物品(4) |

`WorldQuestDefs.json` 中实际出现的奖励货币：`season_candle`(288)、`wax`(204)、`candles`(42)、`prestige_wax`(24)——这 4 种就是经济闭环。

### 3.4 任务 / 星座 / 季节

- **任务**：`QuestConfig.json`(27) + `QuestGroups.json`(2) + `WorldQuestDefs.json`(**368**) + `DailyQuestDefs.json`。
  字段：`id / level_name / type / collectible_name / reward_currency_type_1/2 / reward_amount_1/2 / bonus_* / event_* / once_lifetime / on_until_first_done`。
  任务不是脚本，而是“数据行 + 关卡标记 + NPC 行为树”的组合：`level_name` 指向关卡，`collectible_name` 指向目标实体，奖励直接写表。
- **星座**：`Constellations.json`（**449** 节点）。字段 `name / item_name / item_type / unlockid / x / y / seq / dependency / season / listed`。
  `x,y` 是星座盘二维坐标，`dependency` 构成前置解锁图，`unlockid` 是运行时唯一键。
- **季节**：`SeasonTemplate.json`（92 行键值）定义 `current_min_season=2`、`current_max_season=32` 与各赛季编号；`season_31`、`season_27` 等已出现在装扮表。
- **常驻活动**：`ScheduledEventBarn`、`EventBarn`、`EventCurrencyBarn` 负责节日活动与活动货币。

### 3.5 NPC 与行为树（AI 逻辑被完整数据化）

`Resources/BehaviorTrees/` 共 22 棵行为树，字段结构：

```json
{"treeID":"...","blackboard":{"Agent":{"type":"WorldObject"}, ...},
 "root":{"type":"BT_Sequence","children":[
   {"type":"BT_Condition_AvatarState","properties":{"allowSit":true,...}},
   {"type":"BT_Decorator_ForceStatus","properties":{"forceSuccess":true,"children":[...]}}
 ]}}
```

已出现的节点类型（节选）：

- 组合：`BT_Sequence`(84)、`BT_Selector`(35)、`BT_ActiveSelector`(24)
- 条件：`BT_Condition_AvatarState`、`BT_Condition_ObjectNearby`、`BT_Condition_CheckAttention`、`BT_Condition_DetectShout`
- 装饰：`BT_Decorator_CompareBool`、`ForceStatus`、`Cooldown`、`RunOnce`、`IsObjectNearby`、`IsObjectValid`
- 动作：`BT_Action_Npc_LookAt`、`PlayAnim`、`PlayAction`、`NavTo`、`Waypoint`、`Wait`、`SetBool/SetFloat`、`FindNearestAvatar`、`SelectFromClump`、`EnableObject`、`RandomRange`、`ClearObjectKey`

NPC 表还给出 **MBTI 人格**（`16_personality`，共 16 型，INFP 57 人最多）用于选择空闲行为；`NpcDefs.json`(622) 字段：`name / skeleton / outfit{各槽位 id, height, scale, seed} / capeLevel / headRadius / headCenterOffset / ghost / spirit / hasRelationshipMenu`。

**复刻要点**：这套“黑板 + Sequence/Selector + 条件/动作节点”的行为树可直接用 JSON 实现；NPC 人格只影响空闲动作权重的选择。

### 3.6 社交 / 共享空间 / 小游戏

`FriendBarn`、`BuddyBarn`、`TrustBarn`、`AffinityBarn`、`SocialSafetyBarn` 负责好友、牵手、信任与举报；
`SharedSpaceBarn` + `SharedSpaceShrineBarn` + `PlaceableBarn` 负责“共享空间”家具摆放；
`MessageBoatBarn` / `MessageStoneBarn` / `MessageTurtleBarn` / `MessageCloudMusicBarn` 是留言/点歌载体；
`MusicBarn` / `MusicSequencerBarn` / `SheetMusicBarn` 支持乐器演奏；
小游戏系统：`HideAndSeekBarn`（捉迷藏）、`WerewolfGameBarn`（狼人杀）、`ShellGameBarn`（猜贝壳）、`SnakeGameBarn`、`PlushieTossGameBarn`、`ConcentrationGameBarn`、`CompetitionBarn`、`VotingBarn`。

### 3.7 场景 / 关卡结构

- `Levels/<名>/Objects.level.bin`：魔数 **`TGCL`**（ThatGameCompany Level）。头部 u32 为版本=1、段数、各段偏移、文件大小；主体是对象数组（位置/旋转/缩放、对象类型、参数、引用）。社区已有解析参考，但字段级语义未完全公开。
- `BstBaked.meshes`：块容器 `LVL0` → `GEO0`（几何，含 meshopt 压缩的顶点流）/ `LOD0`（量化 LOD）/ `METR`（材质引用）。本项目已用社区工具还原为 GLB。
- `Resources.lua`：该关卡用到的网格/纹理/音效清单。
- 已导出关卡标记 17 类（烛火、音效点、点光源、NPC、火焰、星之碎片、关卡门、显示文字、冥想点、拾取物、回忆水晶、收集品、蜡堆、光翼、地图石、星座门、传送门），可直接用于场景重构。

### 3.8 渲染 / 音频

- **渲染**：Android = **Vulkan**；4500 个 SPIR-V（`Shaders/Bin/*.android.vs/fs.spv`），命名族 `AncestorEngine-*`。纹理为 KTX 容器、ETC2 压缩（PC 端为 BC）。材质/管线由 `MaterialDefBarn`、`ModelBarn`、`BeamoBarn`、`BlazeBarn`、`CloudBarn`、`ParticleBarn`、`DecalBarn`、`TerrainBarn` 等承担。
- **音频**：FMOD Studio 2.0 事件系统。`.assets.bank`/`.streams.bank` 为 RIFF `FEV `，内含一个或多个 `SND ` 块，每块包裹 FSB5（Vorbis，mode 16）。已全部转为 OGG。

### 3.9 网络与服务端边界

`NetPlayerBarn`、`NetVarBarn`、`NetFlagBarn`、`GlobalMessageBarn`、`LeaderboardBarn`、`AudienceBarn`、`RemoteResourceBarn`、`OrbitDownloaderBarn`。
服务器：`live-ws-sky-merge.game.163.com`（实时/房间）、`live-as-*`（账号）、`live-queue-*`（排队）。账号、好友、商店、活动与热更清单均依赖服务端；**单机复刻可完全省略这一层**。

---

## 4. 数据表清单（核心）

完整目录见 [data_catalog.md](file:///workspace/sky/reports/data_catalog.md)（56 个 JSON）。关键表：

| 文件 | 记录数 | 作用 |
|---|---|---|
| `OutfitDefs.json` | 1649 | 装扮/道具（mesh、纹理、图标、shader、社交能力、赛季） |
| `NpcDefs.json` | 622 | NPC 外观、骨架、人格、身高/头径 |
| `MapDefs.json` | 19 | 地图/领域定义（碰撞、环境、光照、音景参数） |
| `WorldQuestDefs.json` | 368 | 世界任务（目标、奖励、货币） |
| `Constellations.json` | 449 | 星座解锁节点与前置依赖 |
| `CollectibleDefs.json` | 248 | 表情/语音/任务给予者/动作 |
| `DailyQuestDefs.json` | — | 每日任务轮换 |
| `SeasonTemplate.json` | 92 | 赛季编号/上下限 |
| `DyeColorDefs.json` | — | 染色色板 |
| `BehaviorTrees/*.json` | 22 棵 | NPC 行为树 |
| `MessageTypes.json` | — | 消息/社交事件类型 |

`MapDefs` 是关卡参数的集中处，建议作为复刻时的“世界配置”模板：每张图一个对象，内含地形/水体/雾/天空/传送点等子结构。

---

## 5. 复刻建议（面向“做一个类光遇小游戏”）

### 5.1 推荐架构

```
数据层：Defs JSON（装扮/NPC/任务/星座/地图）+ 关卡 JSON（对象摆位）
逻辑层：角色控制器（走/跳/滑翔/能量）+ 交互触发器 + 任务状态机 + 行为树
表现层：低多边形角色 + 程序化天空/雾 + 光点/拖尾 + 极简音频
```

不要尝试复刻其二进制或资源格式；复用其**设计模式**：

1. **Defs 表 + ID 引用**：所有内容（装扮、NPC、任务、星座）都用稳定 ID 与扁平表，避免硬编码。
2. **关卡=对象列表**：每关一个 `objects.json`（type、transform、params），与美术资源解耦。
3. **行为树数据化**：黑板 + Sequence/Selector + 条件/动作，先实现 8 个节点即可覆盖 NPC 站立/注视/巡逻/对玩家反应。
4. **货币闭环**：`wax → candles → 装扮`；季节点数用 `season_candle`；献祭用 `prestige_wax`。
5. **飞行手感**：俯仰控制 + 能量条 + 斗篷等级系数；先做“按住上升/松开滑翔”的两键方案。
6. **社交最小集**：牵手/拥抱/乐器/留言石；共享空间可后置。

### 5.2 最小可玩循环（MVP）

1. 主城出生 → 收集烛火（触发器 + 粒子）→ 合成蜡烛。
2. 滑翔穿过云洞 → 到达下一领域（LevelLink）。
3. 与 NPC 对话（行为树 + 任务行）→ 获得表情/装扮。
4. 在衣柜装备装扮（OutfitDefs 槽位）→ 外观即时变化。
5. 星座盘解锁（Constellations 图）→ 获得光翼 → 飞行能力提升。

---

## 6. 证据与复现

- 详细模块目录：[SOURCE_MODULES.md](file:///workspace/sky/SOURCE_MODULES.md)
- 素材清单与格式：[ASSETS.md](file:///workspace/sky/ASSETS.md)
- APK 清单报告：[apk_manifest.md](file:///workspace/sky/reports/apk_manifest.md)
- Lua 反编译目录：[lua_catalog.md](file:///workspace/sky/reports/lua_catalog.md)
- 数据表目录：[data_catalog.md](file:///workspace/sky/reports/data_catalog.md)
- 网格导出日志：[meshes.log](file:///workspace/sky/reports/meshes.log)
- 音频清单：[audio_manifest.csv](file:///workspace/sky/reports/audio_manifest.csv)

---

## 7. 未解与限制（诚实说明）

1. `.mesh` 有 5 类变体。base（flags 0/0x100）已完整导出；`ZipPos` 变体（1474 个角色/装扮网格）中 778 个导出为**点云**（无面），782 个因压缩/索引布局未完全逆向而失败；14 个 `_StripAnim_CompOcc_ZipPos_*` 斗篷网格跳过。
2. `Objects.level.bin`（TGCL）字段级语义未完全公开；本项目仅通过社区工具导出了关卡几何 GLB 与标记点 JSON。
3. `.slug` 字体容器（TGC 自研 SDF 格式）无公开解析器，仅保留原文件与 BMFont `.fnt`。
4. 部分高层玩法（联机、商店、活动）依赖服务端，包内不含完整规则。
5. 本包为 0.16.7 时点内容；`patchlist.json` 显示运行期还有约 1.7 GB 热更资源。
