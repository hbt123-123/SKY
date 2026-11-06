resource("LevelObjects")("VoidSharedSpace")({
  level = "VoidSharedSpace",
  source = "Levels/VoidSharedSpace/Objects.level",
  sourcesCount = 3,
  sources = {
    "Levels/VoidSharedSpace/Objects.level",
    "Levels/VoidSharedSpace/Background.level",
    "Levels/VoidSharedSpace/Checkpoint.level"
  },
  stripDebug = true
})
resource("Mesh")("FriendshipStatue_01")({
  source = "FriendshipStatue_01.fbx",
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
resource("Mesh")("TrialShrineSmall_01")({
  source = "TrialShrineSmall_01.fbx",
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
resourceref("Image")("FriendshipStatue")
resourceref("Image")("FriendshipStatueSh")
resourceref("Image")("StoneBase")
resourceref("Image")("StoneBaseSh")
resourceref("Image")("StoneGrunge2")
resourceref("Image")("StoneRampGray")
resourceref("Image")("White")
resource("LevelData")("VoidSharedSpace")({
  source = "Levels/VoidSharedSpace/BstBaked.meshes",
  lodToLoad = 0
})
