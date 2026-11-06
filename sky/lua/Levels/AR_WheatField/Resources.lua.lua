resource("LevelObjects")("AR_WheatField")({
  level = "AR_WheatField",
  source = "Levels/AR_WheatField/Objects.level",
  sourcesCount = 2,
  sources = {
    "Levels/AR_WheatField/Objects.level",
    "Levels/AR_WheatField/WheatField.level"
  },
  stripDebug = true
})
resource("Mesh")("CharBirdDawnAnim")({
  source = "CharBirdDawnAnim.fbx",
  computeOcclusions = false,
  computeEdges = false,
  computeAdjacency = false,
  compressPositions = false,
  compressUvs = false,
  stripUv13 = false,
  stripNormals = false,
  forceIndex32 = false,
  registerCollision = true,
  stripAnimation = false
})
resource("Mesh")("Plane")({
  source = "Plane.fbx",
  computeOcclusions = false,
  computeEdges = false,
  computeAdjacency = false,
  compressPositions = false,
  compressUvs = false,
  stripUv13 = false,
  stripNormals = false,
  forceIndex32 = false,
  registerCollision = true,
  stripAnimation = false
})
resource("Mesh")("S31_BedRoomChair")({
  source = "S31_BedRoomChair.fbx",
  computeOcclusions = false,
  computeEdges = false,
  computeAdjacency = false,
  compressPositions = false,
  compressUvs = false,
  stripUv13 = false,
  stripNormals = false,
  forceIndex32 = false,
  registerCollision = true,
  stripAnimation = false
})
resourceref("Image")("PaintStrokeSh_Round_Short")
resourceref("Image")("PaintStroke_Round_Short")
resourceref("Image")("PropRampGO")
resourceref("Image")("UpNormal")
resourceref("Image")("White")
resourceref("Image")("BrushstrokeSh")
resourceref("Image")("BrushstrokeMask")
resource("LevelData")("AR_WheatField")({
  source = "Levels/AR_WheatField/BstBaked.meshes",
  lodToLoad = 0
})
