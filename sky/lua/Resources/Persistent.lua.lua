if _G.SKY_ENABLE_RETAIL_DEMO == nil then
  SKY_ENABLE_RETAIL_DEMO = os.getenv("SKY_ENABLE_RETAIL_DEMO")
end
resource("Script")("Account")({
  source = "Scripts/Account.lua",
  stripDebug = false
})
resource("AllLevelList")("AllLevels")({})
if os.getenv("NETEASE_REMOTE_RESOURCE_SYSTEM") then
  file("Data/RemoteResources/" .. os.getenv("PLATFORM") .. "/remotelist.bin")
end
if os.getenv("NETEASE_TRACE") then
  file("Data/Trace/Cert/ca-bundle.crt")
  file("Data/Trace/gpm_config.json")
  file("Data/Trace/ue_insight_config.json")
end
if os.getenv("NETEASE_BENCHMARK_MODE") then
  file("Data/Benchmark/LevelTraveler/MainStreet/benchmark_travel_track.json")
  file("Data/Benchmark/LevelTraveler/RainShelter/benchmark_travel_track.json")
  file("Data/Benchmark/LevelTraveler/DayEnd/benchmark_travel_track.json")
  file("Data/Benchmark/LevelTraveler/Prairie_WildLifePark/benchmark_travel_track.json")
  file("Data/Benchmark/LevelTraveler/Dusk/benchmark_travel_track.json")
  file("Data/Benchmark/LevelTraveler/CandleSpaceEnd/benchmark_travel_track.json")
  file("Data/Benchmark/LevelTraveler/Sunset/benchmark_travel_track.json")
  file("Data/Benchmark/LevelTraveler/Prairie_Village/benchmark_travel_track.json")
  file("Data/Benchmark/LevelTraveler/Night/benchmark_travel_track.json")
  file("Data/Benchmark/LevelTraveler/Dawn/benchmark_travel_track.json")
  file("Data/Benchmark/LevelTraveler/Prairie_Island/benchmark_travel_track.json")
  file("Data/Benchmark/LevelTraveler/Night_ValleyForest/benchmark_travel_track.json")
  file("Data/Benchmark/LevelTraveler/DuskMid_Past/benchmark_travel_track.json")
  file("Data/Benchmark/LevelTraveler/DuskMid_PastMarket/benchmark_travel_track.json")
  file("Data/Benchmark/BkInstances/bk_instance_summary.json")
  file("Data/Benchmark/BkInstances/BkInstancesLib/yangkang.json")
  file("Data/Benchmark/BkInstances/BkInstancesLib/mxq.json")
  file("Data/Benchmark/BkInstances/BkInstancesLib/xbc.json")
  file("Data/Benchmark/BkInstances/BkInstancesLib/ll.json")
end
file("Data/Tex3D/CloudNoise.vol")
file("Data/Tex3D/CloudFluffy.vol")
file("Data/Tex3D/PerlinNoise.vol")
if _G.CONFIG ~= "Gold" then
  file("Data/Vars/Vars.lua")
  file("Data/Vars/Vars_Live.lua")
  file("Data/Vars/Vars_Stabilization.lua")
  file("Data/Vars/Vars_Test.lua")
  file("Data/Vars/Vars_AppleRetailDemo.lua")
  file("Data/Vars/Vars_SwitchRC2.lua")
end
file("Data/Scripts/LoadLevel.lua")
file("Data/Scripts/DebugFunctions.lua")
file("Data/Scripts/Account.lua")
file("Data/Resources/ARAnchorPropertyDefs.json")
file("Data/Resources/ARImageMarkerDefs.json")
file("Data/Resources/AudienceEventDefs.json")
file("Data/Resources/CameraQuestDefs.json")
file("Data/Resources/CollectibleDefs.json")
file("Data/Resources/Constellations.json")
file("Data/Resources/DailyQuestDefs.json")
file("Data/Resources/QuestConfig.json")
file("Data/Resources/QuestGroups.json")
file("Data/Resources/NpcDefs.json")
file("Data/Resources/OutfitDefs.json")
file("Data/Resources/OutfitDefs_stripped.json")
file("Data/Resources/PlaceableDefs.json")
file("Data/Resources/MapDefs.json")
file("Data/Resources/MessageTypes.json")
file("Data/Resources/SeasonTemplate.json")
file("Data/Resources/WorldQuestDefs.json")
file("Data/Resources/CreatureQuestDefs.json")
file("Data/Resources/CreatureQuestWaveDefs.json")
file("Data/Resources/RadianceSpawnDefs.json")
file("Data/Resources/StormSpawnerDefs.json")
file("Data/Resources/DarknessSpawnWaveDefs.json")
file("Data/Resources/DyeColorDefs.json")
file("Data/Resources/DynamicMenuGroupDefs.json")
file("Data/Resources/DynamicMenuIODefs.json")
file("Data/Resources/SocialFeedPrompts.json")
file("Data/Resources/SkyCreditsDefs.json")
file("Data/Resources/BehaviorTrees/Behavior_IdleStand.json")
file("Data/Resources/BehaviorTrees/Behavior_IdleLook.json")
file("Data/Resources/BehaviorTrees/Behavior_Patrol.json")
file("Data/Resources/BehaviorTrees/Behavior_ReactToNearbyPlayer.json")
file("Data/Resources/BehaviorTrees/Behavior_GuardReact.json")
file("Data/Resources/BehaviorTrees/Behavior_OrbStatus.json")
file("Data/Resources/BehaviorTrees/NPC_WaypointWander.json")
file("Data/Resources/BehaviorTrees/NPC_WaypointIdle.json")
file("Data/Resources/BehaviorTrees/NPC_HostileGuard.json")
file("Data/Resources/BehaviorTrees/NPC_TrustCompanion.json")
file("Data/Resources/BehaviorTrees/NPC_DailyQuestGiver.json")
file("Data/Resources/BehaviorTrees/NPC_GuardIdle.json")
file("Data/Resources/BehaviorTrees/NPC_GuardWander.json")
file("Data/Resources/BehaviorTrees/NPC_PersonalityWander.json")
file("Data/Resources/BehaviorTrees/NPC_PersonalityCarnivalGuest.json")
file("Data/Resources/BehaviorTrees/NPC_PersonalityARWheatVG.json")
file("Data/Resources/BehaviorTrees/NPC_AnnoyingKid.json")
file("Data/Resources/BehaviorTrees/NPC_TGCEmployee.json")
file("Data/Resources/BehaviorTrees/NPC_WaypointWanderReactToNearbyNpc.json")
file("Data/Resources/BehaviorTrees/NPC_IdleReactToNearbyNpc.json")
file("Data/Resources/BehaviorTrees/NPC_HuntPlayer.json")
file("Data/Resources/BehaviorTrees/NPC_Wave.json")
file("Data/Resources/OutfitDefs_Netease.json")
file("Data/Resources/OutfitTransform_Netease.json")
file("Data/Resources/PlaceableDefs_Netease.json")
file("Data/Resources/TeleportBeacon.json")
file("Data/Resources/CompressDictionary.zst")
file("Data/Resources/CutsceneCaptureDefs_Netease.json")
file("Data/Resources/NpcDefs_Netease.json")
file("Data/Resources/SheetSort_Netease.json")
if _G.CONFIG ~= "Gold" then
  file("Data/Debug/sample_video_defs.json")
  file("Data/Debug/sample_video_schedule.json")
  file("Data/Debug/resource_sync_automated_test_file.dat")
end
remote_file("Data/Debug/build_number.txt")
if SKY_ENABLE_RETAIL_DEMO then
  file("Data/Replays/RetailDemoDawn.v2.replay")
  file("Data/Replays/RetailDemoSunset.v2.replay")
  file("Data/Replays/RetailDemoSunsetDownhill.v2.replay")
end
if PLATFORM == "win" then
  file("Data/ML/ggml-base.bin")
end
if PLATFORM == "iphoneos" or PLATFORM == "android" then
  file("Data/Images/AR/ARMarker.png")
  file("Data/Images/AR/ARMarker_GO_Wheat1.png")
  file("Data/Images/AR/ARMarker_GO_Wheat2.png")
  file("Data/Images/AR/ARMarker_GO_Bed.png")
  file("Data/Images/AR/ARMarker_GO_Wheat_AppleDemo.png")
end
resource("CompiledAnimationList")("AnimationList")({noPack = true})
resourceref("Image")("Arial32")
resourceref("Image")("Consolas32")
resourceref("Image")("UISpot")
resourceref("Image")("Noise3Ch")
resourceref("Image")("Noise3ChSoft")
resourceref("Image")("CharSkyRayBasicTex")
resourceref("Image")("RedL2")
resourceref("Image")("RedD3")
resourceref("Image")("Gray")
resourceref("Image")("YellowD2")
resourceref("Image")("StoneBaseSh")
resourceref("Image")("AncestorBlue")
resourceref("Image")("BlueL2")
resourceref("Image")("GrayD1")
resourceref("Image")("GrayL2")
resourceref("Image")("Orange")
resourceref("Image")("BasicGeoAtlas1")
resourceref("Image")("Black")
resourceref("Image")("White")
resourceref("Image")("Red")
resourceref("Image")("OrangeL1")
resourceref("Image")("OrangeL2")
resourceref("Image")("Rainbow")
resourceref("Image")("AttribSimpleGlow")
resourceref("Image")("AvatarMaskBasicChamTex")
resourceref("Image")("AvatarMaskBasicTex")
resourceref("Image")("CharRampS1")
resourceref("Image")("CharSkyRayBasicTexSh")
resourceref("Image")("Clear")
resourceref("Image")("CloudFarTex")
resourceref("Image")("CloudStripTex")
resourceref("Image")("CloudScrollTex")
resourceref("Image")("DawnIntroGate")
resourceref("Image")("DawnIntroGateSh")
resourceref("Image")("StoneBase")
resourceref("Image")("StoneBaseMotif")
resourceref("Image")("StoneBlueL1")
resourceref("Image")("StoneBlueD3")
resourceref("Image")("StoneGrunge2")
resourceref("Image")("StoneRamp")
resourceref("Image")("StoneRamp2")
resourceref("Image")("SandNoiseGray04")
resourceref("Image")("Diamonds05")
resourceref("Image")("GardenEelVAT")
resourceref("Image")("PresenceVat0")
resourceref("Image")("PresenceVatNorm0")
resourceref("Image")("PresenceVat1")
resourceref("Image")("PresenceVatNorm1")
resourceref("Image")("PresenceVat2")
resourceref("Image")("PresenceVat3")
resourceref("Image")("EmberAnim")
resourceref("Image")("NoiseBlue3Ch")
resourceref("Image")("Noise01")
resourceref("Image")("HeatTex")
resourceref("Image")("UpNormal")
resourceref("Image")("CliffSh")
resourceref("Image")("SoilSh")
resourceref("Image")("RockHeightCliffSh")
resourceref("Image")("WallSh")
resourceref("Image")("GoldSh")
resourceref("Image")("TileCeilingSh")
resourceref("Image")("GlacierSh")
resourceref("Image")("TileFloorSh")
resourceref("Image")("CliffWetSh")
resourceref("Image")("BrickSh")
resourceref("Image")("WoodSh")
resourceref("Image")("WoodPlankSh")
resourceref("Image")("GrassNorTex0")
resourceref("Image")("GrassNorTex1")
resourceref("Image")("GrassMask")
resourceref("Image")("OceanNormal")
resourceref("Image")("Caustics")
resourceref("Image")("Caustics2")
resourceref("Image")("Caustics2Normal")
resourceref("Image")("SandMask")
resourceref("Image")("OceanFoam")
resourceref("Image")("OceanFlow01")
resourceref("Image")("ScreenRainMask")
resourceref("Image")("FxFlameRayTex")
resourceref("Image")("FxRainbowTex1")
resourceref("Image")("WingAuraRainbow")
resourceref("Image")("Video0")
resourceref("Image")("Video1")
resourceref("Image")("UILogo")
resourceref("Image")("UIRingBold")
resourceref("Image")("UISphere")
resourceref("Image")("TGCLogoFlat")
if PLATFORM == "win" then
  resourceref("Image")("Netease_Logo")
end
resourceref("Image")("ParticleAtlas")
resource("ImageRegion")("rubbleR")({
  image = "ParticleAtlas",
  uv = {
    0,
    0,
    0.125,
    0.125
  }
})
resource("ImageRegion")("rubble2R")({
  image = "ParticleAtlas",
  uv = {
    0.125,
    0,
    0.25,
    0.125
  }
})
resource("ImageRegion")("thunderR")({
  image = "ParticleAtlas",
  uv = {
    0.25,
    0,
    0.375,
    0.125
  }
})
resource("ImageRegion")("lightningR")({
  image = "ParticleAtlas",
  uv = {
    0.375,
    0,
    0.5,
    0.125
  }
})
resource("ImageRegion")("squareR")({
  image = "ParticleAtlas",
  uv = {
    0,
    0.125,
    0.125,
    0.25
  }
})
resource("ImageRegion")("dirtR")({
  image = "ParticleAtlas",
  uv = {
    0.125,
    0.125,
    0.25,
    0.25
  }
})
resource("ImageRegion")("auraR")({
  image = "ParticleAtlas",
  uv = {
    0.25,
    0.125,
    0.375,
    0.25
  }
})
resource("ImageRegion")("petalR")({
  image = "ParticleAtlas",
  uv = {
    0.375,
    0.125,
    0.5,
    0.25
  }
})
resource("ImageRegion")("crossR")({
  image = "ParticleAtlas",
  uv = {
    0,
    0.25,
    0.125,
    0.375
  }
})
resource("ImageRegion")("doodleR")({
  image = "ParticleAtlas",
  uv = {
    0.125,
    0.25,
    0.25,
    0.375
  }
})
resource("ImageRegion")("clothR")({
  image = "ParticleAtlas",
  uv = {
    0.25,
    0.25,
    0.375,
    0.375
  }
})
resource("ImageRegion")("wispyR")({
  image = "ParticleAtlas",
  uv = {
    0.375,
    0.25,
    0.5,
    0.375
  }
})
resource("ImageRegion")("rippleR")({
  image = "ParticleAtlas",
  uv = {
    0,
    0.375,
    0.125,
    0.5
  }
})
resource("ImageRegion")("circleR")({
  image = "ParticleAtlas",
  uv = {
    0.125,
    0.375,
    0.25,
    0.5
  }
})
resource("ImageRegion")("starR")({
  image = "ParticleAtlas",
  uv = {
    0.25,
    0.375,
    0.375,
    0.5
  }
})
resource("ImageRegion")("dotR")({
  image = "ParticleAtlas",
  uv = {
    0.375,
    0.375,
    0.5,
    0.5
  }
})
resource("ImageRegion")("snowR")({
  image = "ParticleAtlas",
  uv = {
    0.5,
    0,
    0.625,
    0.125
  }
})
resource("ImageRegion")("dustR")({
  image = "ParticleAtlas",
  uv = {
    0.625,
    0,
    0.75,
    0.125
  }
})
resource("ImageRegion")("sandR")({
  image = "ParticleAtlas",
  uv = {
    0.5,
    0.125,
    0.625,
    0.25
  }
})
resource("ImageRegion")("glowR")({
  image = "ParticleAtlas",
  uv = {
    0.625,
    0.125,
    0.75,
    0.25
  }
})
resource("ImageRegion")("glitterR")({
  image = "ParticleAtlas",
  uv = {
    0.75,
    0,
    1,
    0.25
  }
})
resource("ImageRegion")("sandstormR")({
  image = "ParticleAtlas",
  uv = {
    0.5,
    0.25,
    0.75,
    0.5
  }
})
resource("ImageRegion")("ringR")({
  image = "ParticleAtlas",
  uv = {
    0.75,
    0.25,
    1,
    0.5
  }
})
resource("ImageRegion")("poofR")({
  image = "ParticleAtlas",
  uv = {
    0,
    0.5,
    0.25,
    0.75
  }
})
resource("ImageRegion")("boonR")({
  image = "ParticleAtlas",
  uv = {
    0.25,
    0.5,
    0.5,
    0.75
  }
})
resource("ImageRegion")("exclamationR")({
  image = "ParticleAtlas",
  uv = {
    0,
    0.75,
    0.0625,
    0.8125
  }
})
resource("ImageRegion")("questionR")({
  image = "ParticleAtlas",
  uv = {
    0.0625,
    0.75,
    0.125,
    0.8125
  }
})
resource("ImageRegion")("heartR")({
  image = "ParticleAtlas",
  uv = {
    0,
    0.8125,
    0.0625,
    0.875
  }
})
resource("ImageRegion")("sleepR")({
  image = "ParticleAtlas",
  uv = {
    0.0625,
    0.8125,
    0.125,
    0.875
  }
})
resource("ImageRegion")("lightR")({
  image = "ParticleAtlas",
  uv = {
    0.125,
    0.75,
    0.25,
    0.875
  }
})
resource("ImageRegion")("hahahaR")({
  image = "ParticleAtlas",
  uv = {
    0,
    0.875,
    0.0625,
    0.9375
  }
})
resource("ImageRegion")("angryveinR")({
  image = "ParticleAtlas",
  uv = {
    0.0625,
    0.875,
    0.125,
    0.9375
  }
})
resource("ImageRegion")("nothanksR")({
  image = "ParticleAtlas",
  uv = {
    0,
    0.9375,
    0.0625,
    1
  }
})
resource("ImageRegion")("petal2R")({
  image = "ParticleAtlas",
  uv = {
    0.0625,
    0.9375,
    0.125,
    1
  }
})
resource("ImageRegion")("bubbleR")({
  image = "ParticleAtlas",
  uv = {
    0.125,
    0.875,
    0.1875,
    0.9375
  }
})
resource("ImageRegion")("CresentR")({
  image = "ParticleAtlas",
  uv = {
    0.125,
    0.9375,
    0.1875,
    1
  }
})
resource("ImageRegion")("coinR")({
  image = "ParticleAtlas",
  uv = {
    0.1875,
    0.875,
    0.25,
    0.9375
  }
})
resource("ImageRegion")("featherR")({
  image = "ParticleAtlas",
  uv = {
    0.1875,
    0.9375,
    0.25,
    1
  }
})
resource("ImageRegion")("rayR")({
  image = "ParticleAtlas",
  uv = {
    0.25,
    0.75,
    0.5,
    1
  }
})
resource("ImageRegion")("CloudAnimR")({
  image = "ParticleAtlas",
  uv = {
    0.5,
    0.5,
    1,
    1
  }
})
resourceref("Image")("ParticleAtlasNetease")
resourceref("Image")("KizunaAudienceEmotesAtlas")
resource("ImageRegion")("krillR")({
  image = "ParticleAtlasNetease",
  uv = {
    0,
    0,
    0.25,
    0.25
  }
})
resource("ImageRegion")("circleNetease")({
  image = "ParticleAtlasNetease",
  uv = {
    0.25,
    0,
    0.375,
    0.125
  }
})
resourceref("Image")("AWSLogoLight")
resourceref("Image")("FMODLogoLight")
resourceref("Image")("AMBERLogo")
resourceref("Image")("FacebookLogo")
resourceref("Image")("MirrativLogo")
resourceref("Image")("Funtap18plus")
resourceref("Image")("RolandTR909Logo")
resourceref("Image")("CharRampAvatar")
resourceref("Image")("CharRampSpirit")
resourceref("Image")("CharRampMono")
resourceref("Image")("CharRampWarm")
resourceref("Image")("CharRampCool")
resourceref("Image")("CharRampS2")
resourceref("Image")("CharRampS3")
resourceref("Image")("CharRampS4")
resourceref("Image")("CharRampS6")
resourceref("Image")("CharRampS7")
resourceref("Image")("CharRampS8")
resourceref("Image")("CharRampS9")
resourceref("Image")("CharRampS10")
resourceref("Image")("CharRampS11")
resourceref("Image")("CharRampS12")
resourceref("Image")("CharRampS13")
resourceref("Image")("CharRampS14")
resourceref("Image")("CharRampS16")
resourceref("Image")("CharRampKid")
resourceref("Image")("CharRampS16Aurora")
resourceref("Image")("CharRampAuroraNPC")
resourceref("Image")("CharRampAuroraNPC2")
resourceref("Image")("CharRampS16Misc")
resourceref("Image")("CharRampS17")
resourceref("Image")("CharRampS18")
resourceref("Image")("CharRampS19")
resourceref("Image")("CharRampS20")
resourceref("Image")("CharRampS21")
resourceref("Image")("CharRampS21Deer")
resourceref("Image")("CharRampS23")
resourceref("Image")("CharRampS24")
resourceref("Image")("CharRampS26")
resourceref("Image")("CharRampS27")
resourceref("Image")("CharRampS28")
resourceref("Image")("CharRampS29")
resourceref("Image")("CharRampS30")
resourceref("Image")("CharRampS31")
resourceref("Image")("CharRampS31Starry")
resourceref("Image")("S31StarryAlpha")
resourceref("Image")("PropRampS31Paintings")
resourceref("Image")("PropRampGO")
resourceref("Image")("Wing_AP27Darknesstexture")
resourceref("Image")("CharRampS33Bugs")
resourceref("Image")("S31VGEasel_Color")
resourceref("Image")("S31VGEaselSubjects_Color")
resourceref("Image")("CharRampCustom01")
resourceref("Image")("CharRampCustom02")
resourceref("Image")("CharRampWheat")
resourceref("Image")("CharRampAlpha1")
resourceref("Image")("CharRampAlpha2")
resourceref("Image")("CharRampEvents")
resourceref("Image")("CharRampEvents2")
resourceref("Image")("CharRampEvents3")
resourceref("Image")("CharRampEvents4")
resourceref("Image")("CharRampRainbow")
resourceref("Image")("CharRampKizunaAi")
resourceref("Image")("TwinRibbonEmote")
resourceref("Image")("CharRampXmas_Tex")
resourceref("Image")("CharRampXmas_Att")
resourceref("Image")("CharRampLNY")
resourceref("Image")("CharRampLNY1")
resourceref("Image")("CharRampLNY2")
resourceref("Image")("CharRampLNY_Att")
resourceref("Image")("CharRampMisc1")
resourceref("Image")("CharRampCrabLace")
resourceref("Image")("CharRampStarJar")
resourceref("Image")("CharRampGray")
resourceref("Image")("CharRampDB01")
resourceref("Image")("SkyRayCTex")
resourceref("Image")("PropRampStoneTint")
resourceref("Image")("PropRampStoneGrey")
resourceref("Image")("PropRampStoneBlue")
resourceref("Image")("PropRampStoneOrange")
resourceref("Image")("PropRampStonePurple")
resourceref("Image")("PropRampWoodOrange")
resourceref("Image")("PropRampAntiqueTint")
resourceref("Image")("PropRampS25")
resourceref("Image")("PropRampS27")
resourceref("Image")("Brick")
resourceref("Image")("Pebbles1")
resourceref("Image")("Pebbles2")
resourceref("Image")("Attrib_General")
resourceref("Image")("Attrib_GlowRamp")
resourceref("Image")("Attrib_GlossRamp")
resourceref("Image")("Attrib_Fabric")
resourceref("Image")("Attrib_Leather")
resourceref("Image")("Attrib_Scales")
resourceref("Image")("Attrib_CrabLace")
resourceref("Image")("Attrib_ScalesIridescent")
resourceref("Image")("Attrib_MetalBeaten")
resourceref("Image")("CharSkyKid_General_Att")
resourceref("Image")("Mask_General")
resourceref("Image")("Mask_Wing")
resourceref("Image")("Mask_Ramp")
resourceref("Image")("Mask_RampEffects")
resourceref("Image")("Mask_Pastel")
resourceref("Image")("Mask_Ramp_2")
resourceref("Image")("Light_Ramp")
resourceref("Image")("Mask_BlueTear")
resourceref("Image")("Pattern_Checker")
resourceref("Image")("Pattern_Plaid")
resourceref("Image")("Pattern_Aloha")
resourceref("Image")("CreatureRamp")
resourceref("Image")("GhostCreatureRamp")
resourceref("Image")("Noise2Ch")
resourceref("Image")("DeerSpotSDF")
resourceref("Image")("FeatherAlpha")
resourceref("Image")("CreatureMotif")
resourceref("Image")("CloudThinTex")
resourceref("Image")("ThreeDee")
resourceref("Image")("ThreeDeeCauliflower")
resourceref("Image")("CloudFinTex")
resourceref("Image")("MetalBeatenSh")
resourceref("Image")("FabricSh")
resourceref("Image")("TasselSh")
resourceref("Image")("FabricBase")
resourceref("Image")("FabricBaseSh")
resourceref("Image")("WoodBase")
resourceref("Image")("WoodBaseLight")
resourceref("Image")("WoodBaseSh")
resourceref("Image")("PaintStrokeSh_Terrain")
resourceref("Image")("PaintStrokeSh2_Terrain")
resourceref("Image")("PaintStroke_Round_Short")
resourceref("Image")("PaintStroke_Round_Long")
resourceref("Image")("PaintStroke_Round_Swirl")
resourceref("Image")("PaintStroke_Flat_Short")
resourceref("Image")("PaintStroke_Flat_Checker")
resourceref("Image")("PaintStrokeSh_Round_Short")
resourceref("Image")("PaintStrokeSh_Round_Long")
resourceref("Image")("PaintStrokeSh_Round_Swirl")
resourceref("Image")("PaintStrokeSh_Flat_Short")
resourceref("Image")("PaintStrokeSh_Flat_Checker")
resourceref("Image")("Leaves")
resourceref("Image")("Petals")
resourceref("Image")("FoliageTintColor")
resourceref("Image")("CliffDamaged")
resourceref("Image")("IceNorm")
resourceref("Image")("ConstellationImageDawn")
resourceref("Image")("ConstellationImageDay")
resourceref("Image")("ConstellationImageRain")
resourceref("Image")("ConstellationImageSunset")
resourceref("Image")("ConstellationImageDusk")
resourceref("Image")("ConstellationImageNight")
resourceref("Image")("ConstellationImageStorm")
resourceref("Image")("ConstellationImageFriendButterflies")
resourceref("Image")("ConstellationImageFriendCrab")
resourceref("Image")("ConstellationImageFriendCrown")
resourceref("Image")("ConstellationImageFriendDrum")
resourceref("Image")("ConstellationImageFriendManta")
resourceref("Image")("ConstellationImageFriendUmbrella")
resourceref("Image")("ConstellationImageFriendKids")
resourceref("Image")("ConstellationImageFriendHarp")
resourceref("Image")("ConstellationImageFriendMonument")
resourceref("Image")("ConstellationImageFriendJellyfish")
resourceref("Image")("ConstellationImageAP")
resourceref("Image")("ConstellationImageAP02")
resourceref("Image")("ConstellationImageAP03")
resourceref("Image")("ConstellationImageAP04")
resourceref("Image")("ConstellationImageAP05")
resourceref("Image")("ConstellationImageAP06")
resourceref("Image")("ConstellationImageAP07")
resourceref("Image")("ConstellationImageAP08")
resourceref("Image")("ConstellationImageAP09")
resourceref("Image")("ConstellationImageAP10")
resourceref("Image")("ConstellationImageAP11")
resourceref("Image")("ConstellationImageAP12")
resourceref("Image")("ConstellationImageAP13")
resourceref("Image")("ConstellationImageAP14")
resourceref("Image")("ConstellationImageAP15")
resourceref("Image")("ConstellationImageAP16")
resourceref("Image")("ConstellationImageAP17")
resourceref("Image")("ConstellationImageAP18")
resourceref("Image")("ConstellationImageAP19")
resourceref("Image")("ConstellationImageAP21")
resourceref("Image")("ConstellationImageAP22")
resourceref("Image")("ConstellationImageAP23")
resourceref("Image")("ConstellationImageAP24")
resourceref("Image")("ConstellationImageAP25")
resourceref("Image")("ConstellationImageAP26")
resourceref("Image")("ConstellationImageAP27")
resourceref("Image")("ConstellationImageAP28")
resourceref("Image")("ConstellationImageAP29")
resourceref("Image")("ConstellationImageAP30")
resourceref("Image")("ConstellationImageAP31")
resourceref("Image")("ConstellationImageAP32")
resourceref("Image")("UIRing")
resourceref("Image")("UIRingBloom")
resourceref("Image")("UIRingBigThin")
resourceref("Image")("UIRingBigThinner")
resourceref("Image")("UIRingBigMedium")
resourceref("Image")("UIRingBigThick")
resourceref("Image")("UIBorderThin")
resourceref("Image")("UIBorderThinFill")
resourceref("Image")("UIStepHoop")
resourceref("Image")("ShoutRingBloom")
resourceref("Image")("UIArrowUp")
resourceref("Image")("UIEye")
resourceref("Image")("UIFingerSingle")
resourceref("Image")("UIFingerSingleShadow")
resourceref("Image")("UIFingerDouble")
resourceref("Image")("UIBar")
resourceref("Image")("UIFade")
resourceref("Image")("UIFadeLine")
resourceref("Image")("UISphereFade")
resourceref("Image")("UiButtonGlow")
resourceref("Image")("UiBorderGlowSoft")
resourceref("Image")("UiBorderGlowHard")
resourceref("Image")("UiBorderGlowThinSoft")
resourceref("Image")("UiBorderGlowThinHard")
resourceref("Image")("UiBorderGlowThickSoft")
resourceref("Image")("UiBorderGlowThickHard")
resourceref("Image")("UiRadialSliceGlowSoft")
resourceref("Image")("UiRectangleSmooth")
resourceref("Image")("UiBubbleButtonBorder")
resourceref("Image")("UiButtonBorderThin")
resourceref("Image")("UiMenuTabHighlight")
resourceref("Image")("UiButtonToggledEdge")
resourceref("Image")("UiMenuGradientEdge")
resourceref("Image")("UiMenuGradientLinear")
resourceref("Image")("UiMenuGradientVertical")
resourceref("Image")("UiMenuGradientHorizontal")
resourceref("Image")("UiRadialCursorBg")
resourceref("Image")("UiMiscGradientNineSlice")
resourceref("Image")("UiMenuShadowLeft")
resourceref("Image")("UiMapTintOverlay")
resourceref("Image")("UiVignette")
resourceref("Image")("UiGradientShout_Quarter")
resourceref("Image")("UiMiscDropShadowCircle")
resourceref("Image")("UiMiscDropShadowCircleSmall")
resourceref("Image")("UiMaskCircleGlow")
resourceref("Image")("UiMiscHeartGlow")
resourceref("Image")("UiMiscTrustTierShadow")
resourceref("Image")("UiMapCloud_Tile")
resourceref("Image")("UiMapInkblot")
resourceref("Image")("UiAlbumAurora")
resourceref("Image")("DarkstoneNorTex")
resourceref("Image")("Wisteria")
resourceref("Image")("FlowerTex")
resourceref("Image")("UiMapSelectedHighlight")
resourceref("Image")("Portal")
resource("ImageRegion")("PortalDawn")({
  image = "Portal",
  uv = {
    0,
    0,
    0.3333333333333333,
    0.3333333333333333
  }
})
resource("ImageRegion")("PortalDay")({
  image = "Portal",
  uv = {
    0.3333333333333333,
    0,
    0.6666666666666666,
    0.3333333333333333
  }
})
resource("ImageRegion")("PortalRain")({
  image = "Portal",
  uv = {
    0.6666666666666666,
    0,
    1,
    0.3333333333333333
  }
})
resource("ImageRegion")("PortalSunset")({
  image = "Portal",
  uv = {
    0,
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666
  }
})
resource("ImageRegion")("PortalDusk")({
  image = "Portal",
  uv = {
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666
  }
})
resource("ImageRegion")("PortalNight")({
  image = "Portal",
  uv = {
    0.6666666666666666,
    0.3333333333333333,
    1,
    0.6666666666666666
  }
})
resource("ImageRegion")("PortalStorm")({
  image = "Portal",
  uv = {
    0,
    0.6666666666666666,
    0.3333333333333333,
    1
  }
})
resource("ImageRegion")("PortalAP")({
  image = "Portal",
  uv = {
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666,
    1
  }
})
resource("ImageRegion")("PortalPrairie")({
  image = "Portal",
  uv = {
    0.6666666666666666,
    0.6666666666666666,
    1,
    1
  }
})
resource("ImageRegion")("PortalCandleSpace")({
  image = "Portal",
  uv = {
    0.6666666666666666,
    0.6666666666666666,
    1,
    1
  }
})
resource("ImageRegion")("PortalWhite")({
  image = "Portal",
  uv = {
    0.5,
    0,
    0.6,
    0.1
  }
})
resourceref("Image")("StorySpacePortals")
resource("ImageRegion")("PortalLP")({
  image = "StorySpacePortals",
  uv = {
    0,
    0,
    0.3333333333333333,
    0.3333333333333333
  }
})
resource("ImageRegion")("PortalAURORA")({
  image = "StorySpacePortals",
  uv = {
    0.3333333333333333,
    0,
    0.6666666666666666,
    0.3333333333333333
  }
})
resource("ImageRegion")("PortalDeer")({
  image = "StorySpacePortals",
  uv = {
    0.6666666666666666,
    0,
    1,
    0.3333333333333333
  }
})
resource("ImageRegion")("PortalMoomin")({
  image = "StorySpacePortals",
  uv = {
    0,
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666
  }
})
resource("ImageRegion")("PortalTwoEmbers")({
  image = "StorySpacePortals",
  uv = {
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666
  }
})
resource("ImageRegion")("PortalGO")({
  image = "StorySpacePortals",
  uv = {
    0.6666666666666666,
    0.3333333333333333,
    1,
    0.6666666666666666
  }
})
resource("ImageRegion")("PortalTwoEmbers2")({
  image = "StorySpacePortals",
  uv = {
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666,
    1
  }
})
resource("ImageRegion")("PortalBlank1")({
  image = "StorySpacePortals",
  uv = {
    0.6666666666666666,
    0.6666666666666666,
    1,
    1
  }
})
resource("ImageRegion")("PortalBlank2")({
  image = "StorySpacePortals",
  uv = {
    0.6666666666666666,
    0.6666666666666666,
    1,
    1
  }
})
resource("ImageRegion")("PortalStorySpace")({
  image = "StorySpacePortals",
  uv = {
    0.6666666666666666,
    0.6666666666666666,
    1,
    1
  }
})
resourceref("Image")("GOCredits")
resource("ImageRegion")("GOCredits1")({
  image = "GOCredits",
  uv = {
    0,
    0,
    0.3333333333333333,
    0.3333333333333333
  }
})
resource("ImageRegion")("GOCredits2")({
  image = "GOCredits",
  uv = {
    0.3333333333333333,
    0,
    0.6666666666666666,
    0.3333333333333333
  }
})
resource("ImageRegion")("GOCredits3")({
  image = "GOCredits",
  uv = {
    0.6666666666666666,
    0,
    1,
    0.3333333333333333
  }
})
resource("ImageRegion")("GOCredits4")({
  image = "GOCredits",
  uv = {
    0,
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666
  }
})
resource("ImageRegion")("GOCredits5")({
  image = "GOCredits",
  uv = {
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666
  }
})
resource("ImageRegion")("GOCredits6")({
  image = "GOCredits",
  uv = {
    0.6666666666666666,
    0.3333333333333333,
    1,
    0.6666666666666666
  }
})
resource("ImageRegion")("GOCredits7")({
  image = "GOCredits",
  uv = {
    0,
    0.6666666666666666,
    0.3333333333333333,
    1
  }
})
resource("ImageRegion")("GOCredits8")({
  image = "GOCredits",
  uv = {
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666,
    1
  }
})
resource("ImageRegion")("GOCredits9")({
  image = "GOCredits",
  uv = {
    0.6666666666666666,
    0.6666666666666666,
    1,
    1
  }
})
resourceref("Image")("GOPortrait")
resource("ImageRegion")("GOPortrait1")({
  image = "GOPortrait",
  uv = {
    0,
    0,
    0.3333333333333333,
    0.3333333333333333
  }
})
resource("ImageRegion")("GOPortrait2")({
  image = "GOPortrait",
  uv = {
    0.3333333333333333,
    0,
    0.6666666666666666,
    0.3333333333333333
  }
})
resource("ImageRegion")("GOPortrait3")({
  image = "GOPortrait",
  uv = {
    0.6666666666666666,
    0,
    1,
    0.3333333333333333
  }
})
resource("ImageRegion")("GOPortrait4")({
  image = "GOPortrait",
  uv = {
    0,
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666
  }
})
resource("ImageRegion")("GOPortrait5")({
  image = "GOPortrait",
  uv = {
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666
  }
})
resource("ImageRegion")("GOPortrait6")({
  image = "GOPortrait",
  uv = {
    0.6666666666666666,
    0.3333333333333333,
    1,
    0.6666666666666666
  }
})
resource("ImageRegion")("GOPortrait7")({
  image = "GOPortrait",
  uv = {
    0,
    0.6666666666666666,
    0.3333333333333333,
    1
  }
})
resource("ImageRegion")("GOPortrait8")({
  image = "GOPortrait",
  uv = {
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666,
    1
  }
})
resource("ImageRegion")("GOPortrait9")({
  image = "GOPortrait",
  uv = {
    0.6666666666666666,
    0.6666666666666666,
    1,
    1
  }
})
resourceref("Image")("GreenGray")
resourceref("Image")("AncestorBlueD1")
resourceref("Image")("AncestorBlueL1")
resourceref("Image")("Magenta")
resourceref("Image")("MagentaD3")
resourceref("Image")("MagentaD2")
resourceref("Image")("MagentaD1")
resourceref("Image")("MagentaL3")
resourceref("Image")("MagentaL2")
resourceref("Image")("MagentaL1")
resourceref("Image")("OrangeD3")
resourceref("Image")("OrangeD2")
resourceref("Image")("OrangeD1")
resourceref("Image")("OrangeL3")
resourceref("Image")("PurpleD3")
resourceref("Image")("Yellow")
resourceref("Image")("YellowD3")
resourceref("Image")("YellowD1")
resourceref("Image")("YellowL3")
resourceref("Image")("YellowL2")
resourceref("Image")("YellowL1")
resourceref("Image")("Cyan")
resourceref("Image")("CyanD3")
resourceref("Image")("CyanD2")
resourceref("Image")("CyanD1")
resourceref("Image")("CyanL3")
resourceref("Image")("CyanL2")
resourceref("Image")("CyanL1")
resourceref("Image")("Lime")
resourceref("Image")("LimeD3")
resourceref("Image")("LimeD2")
resourceref("Image")("LimeD1")
resourceref("Image")("LimeL3")
resourceref("Image")("LimeL2")
resourceref("Image")("LimeL1")
resourceref("Image")("Blue")
resourceref("Image")("BlueD3")
resourceref("Image")("BlueD2")
resourceref("Image")("BlueD1")
resourceref("Image")("BlueL3")
resourceref("Image")("BlueL1")
resourceref("Image")("Brown")
resourceref("Image")("Green")
resourceref("Image")("GreenD3")
resourceref("Image")("GreenD2")
resourceref("Image")("GreenD1")
resourceref("Image")("GreenL3")
resourceref("Image")("GreenL2")
resourceref("Image")("GreenL1")
resourceref("Image")("RedD5")
resourceref("Image")("RedD4")
resourceref("Image")("RedD2")
resourceref("Image")("RedD1")
resourceref("Image")("RedL3")
resourceref("Image")("RedL1")
resourceref("Image")("GrayD2")
resourceref("Image")("GrayL1")
resourceref("Image")("PaintBlue")
resourceref("Image")("PaintBlueL1")
resourceref("Image")("PaintBlueL2")
resourceref("Image")("PaintBlueL3")
resourceref("Image")("PaintBlueD1")
resourceref("Image")("PaintBlueD2")
resourceref("Image")("PaintBlueD3")
resourceref("Image")("StoneBlue")
resourceref("Image")("StoneBlueL2")
resourceref("Image")("StoneBlueL3")
resourceref("Image")("StoneBlueD1")
resourceref("Image")("StoneBlueD2")
resourceref("Image")("ColElementWater")
resourceref("Image")("ColElementEarth")
resourceref("Image")("ColElementAir")
resourceref("Image")("ColElementFire")
resourceref("Image")("ElementWater")
resourceref("Image")("ElementEarth")
resourceref("Image")("ElementAir")
resourceref("Image")("ElementFire")
resourceref("Image")("ElementVoid")
resourceref("Image")("ElementMind")
resourceref("Image")("ColorBlackSymbol")
resourceref("Image")("ColorWhiteSymbol")
resourceref("Image")("RopeBasecolor")
resourceref("Image")("RopeNormal")
resourceref("Image")("RainbowBelt")
resourceref("Image")("RainbowBeltStraight")
resourceref("Image")("UiOrangeL3")
resourceref("Image")("UiGrayL1")
resourceref("Image")("ParticleAtlas02")
resourceref("Image")("AudienceEmotesAtlas")
resourceref("Image")("PerlinNoise2D")
resourceref("Image")("BrushstrokeSh")
resourceref("Image")("BrushstrokeMask")
resourceref("Image")("BrushstrokeShortSh")
resourceref("Image")("BrushstrokeShortMask")
resource("ImageRegion")("crl1")({
  image = "ParticleAtlas02",
  uv = {
    0,
    0,
    0.25,
    0.25
  }
})
resource("ImageRegion")("crl2")({
  image = "ParticleAtlas02",
  uv = {
    0.25,
    0,
    0.5,
    0.25
  }
})
resource("ImageRegion")("dot1")({
  image = "ParticleAtlas02",
  uv = {
    0.5,
    0,
    0.75,
    0.25
  }
})
resource("ImageRegion")("dot2")({
  image = "ParticleAtlas02",
  uv = {
    0.75,
    0,
    1,
    0.25
  }
})
resource("ImageRegion")("sqr1")({
  image = "ParticleAtlas02",
  uv = {
    0,
    0.25,
    0.25,
    0.5
  }
})
resource("ImageRegion")("sqr2")({
  image = "ParticleAtlas02",
  uv = {
    0.25,
    0.25,
    0.5,
    0.5
  }
})
resource("ImageRegion")("dmd1")({
  image = "ParticleAtlas02",
  uv = {
    0.5,
    0.25,
    0.75,
    0.5
  }
})
resource("ImageRegion")("tri1")({
  image = "ParticleAtlas02",
  uv = {
    0.75,
    0.25,
    1,
    0.5
  }
})
resource("ImageRegion")("dst1")({
  image = "ParticleAtlas02",
  uv = {
    0,
    0.5,
    0.25,
    0.75
  }
})
resource("ImageRegion")("dst2")({
  image = "ParticleAtlas02",
  uv = {
    0.25,
    0.5,
    0.5,
    0.75
  }
})
resource("ImageRegion")("cld1")({
  image = "ParticleAtlas02",
  uv = {
    0.5,
    0.5,
    0.75,
    0.75
  }
})
resource("ImageRegion")("cld2")({
  image = "ParticleAtlas02",
  uv = {
    0.75,
    0.5,
    1,
    0.75
  }
})
resource("ImageRegion")("clrH")({
  image = "ParticleAtlas02",
  uv = {
    0,
    0.75,
    0.25,
    1
  }
})
resource("ImageRegion")("dmdH")({
  image = "ParticleAtlas02",
  uv = {
    0.25,
    0.75,
    0.5,
    1
  }
})
resource("ImageRegion")("sqrH")({
  image = "ParticleAtlas02",
  uv = {
    0.5,
    0.75,
    0.75,
    1
  }
})
resource("ImageRegion")("triH")({
  image = "ParticleAtlas02",
  uv = {
    0.75,
    0.75,
    1,
    1
  }
})
resourceref("Image")("HandyTex")
resourceref("Image")("HairNormal")
resourceref("Image")("FeatherNoise")
resourceref("Image")("GlitterNoiseBlue")
resourceref("Image")("CoinNoise")
resourceref("Image")("HeartNoise")
resourceref("Image")("TGCWireframeNoise")
resourceref("Image")("CapeIntegrity")
resourceref("Image")("AvatarChamBodyTex")
resourceref("Image")("SpiritAtlas")
resourceref("Image")("CharSkyKid_All_Grad_Tex")
resourceref("Image")("CharSkyKid_Mask_Simple_Att")
resourceref("Image")("CrackTex")
resourceref("Image")("SailMask")
resourceref("Image")("UIAtlas3")
resource("ImageRegion")("UIShopButtonCircle1")({
  image = "UIAtlas3",
  uv = {
    0,
    0,
    0.3333333333333333,
    0.3333333333333333
  }
})
resource("ImageRegion")("UIShopButtonCircle2")({
  image = "UIAtlas3",
  uv = {
    0.3333333333333333,
    0,
    0.6666666666666666,
    0.3333333333333333
  }
})
resource("ImageRegion")("UIShopButtonCircle3")({
  image = "UIAtlas3",
  uv = {
    0.6666666666666666,
    0,
    1,
    0.3333333333333333
  }
})
resourceref("Image")("UIAtlas4")
resource("ImageRegion")("UIRainbowHeart")({
  image = "UIAtlas4",
  uv = {
    0,
    0,
    0.5,
    0.5
  }
})
resource("ImageRegion")("UIRainbowGift")({
  image = "UIAtlas4",
  uv = {
    0.5,
    0,
    1,
    0.5
  }
})
resourceref("Image")("UITutorialAtlasAP")
resource("ImageRegion")("UISeasonPassPromoAP")({
  image = "UITutorialAtlasAP",
  uv = {
    0,
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666
  }
})
resource("ImageRegion")("UISeasonPassPromo2AP")({
  image = "UITutorialAtlasAP",
  uv = {
    0.6666666666666666,
    0,
    1,
    0.3333333333333333
  }
})
resource("ImageRegion")("UISeasonPassPromo3AP")({
  image = "UITutorialAtlasAP",
  uv = {
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666
  }
})
resource("ImageRegion")("UISeasonPassPromo4AP")({
  image = "UITutorialAtlasAP",
  uv = {
    0.3333333333333333,
    0,
    0.6666666666666666,
    0.3333333333333333
  }
})
resource("ImageRegion")("UISeasonPassPromo5AP")({
  image = "UITutorialAtlasAP",
  uv = {
    0,
    0,
    0.3333333333333333,
    0.3333333333333333
  }
})
resource("ImageRegion")("UITutorialUnravelMystery")({
  image = "UITutorialAtlasAP",
  uv = {
    0.6666666666666666,
    0.3333333333333333,
    1,
    0.6666666666666666
  }
})
resource("ImageRegion")("UITutorialSaveSpirits")({
  image = "UITutorialAtlasAP",
  uv = {
    0,
    0.6666666666666666,
    0.3333333333333333,
    1
  }
})
resource("ImageRegion")("UITutorialFlyHigher")({
  image = "UITutorialAtlasAP",
  uv = {
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666,
    1
  }
})
resource("ImageRegion")("UITutorialAscendToStorm")({
  image = "UITutorialAtlasAP",
  uv = {
    0.6666666666666666,
    0.6666666666666666,
    1,
    1
  }
})
resourceref("Image")("UISeasonPassPromoAP15")
resourceref("Image")("UISeasonPassPromoAP16")
resourceref("Image")("UISeasonPassPromoAP17")
resourceref("Image")("UISeasonPassPromoAP18")
resourceref("Image")("UISeasonPassPromoAP19")
resourceref("Image")("UISeasonPassPromoAP20")
resourceref("Image")("UISeasonPassPromoAP21")
resourceref("Image")("UISeasonPassPromoAP22")
resourceref("Image")("UISeasonPassPromoAP23")
resourceref("Image")("UISeasonPassPromoAP24")
resourceref("Image")("UISeasonPassPromoAP25")
resourceref("Image")("UISeasonPassPromoAP26")
resourceref("Image")("UISeasonPassPromoAP27")
resourceref("Image")("UISeasonPassPromoAP28")
resourceref("Image")("UISeasonPassPromoAP29")
resourceref("Image")("UISeasonPassPromoAP30")
resourceref("Image")("UISeasonPassPromoAP31")
resourceref("Image")("UISeasonPassPromoAP32")
resourceref("Image")("UISeasonPassPreoderPromoAP06")
resourceref("Image")("UITutorialAtlasSharedSpaces")
resource("ImageRegion")("UISharedSpacesShareMagic")({
  image = "UITutorialAtlasSharedSpaces",
  uv = {
    0,
    0,
    0.3333333333333333,
    0.3333333333333333
  }
})
resource("ImageRegion")("UISharedSpacesExploreWorld")({
  image = "UITutorialAtlasSharedSpaces",
  uv = {
    0.3333333333333333,
    0,
    0.6666666666666666,
    0.3333333333333333
  }
})
resource("ImageRegion")("UISharedSpacesUniqueItems")({
  image = "UITutorialAtlasSharedSpaces",
  uv = {
    0.6666666666666666,
    0,
    1,
    0.3333333333333333
  }
})
resource("ImageRegion")("UISharedSpacesBeCreative")({
  image = "UITutorialAtlasSharedSpaces",
  uv = {
    0,
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666
  }
})
resource("ImageRegion")("UISharedSpacesShareTutorial1")({
  image = "UITutorialAtlasSharedSpaces",
  uv = {
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666
  }
})
resource("ImageRegion")("UISharedSpacesShareTutorial2")({
  image = "UITutorialAtlasSharedSpaces",
  uv = {
    0.6666666666666666,
    0.3333333333333333,
    1,
    0.6666666666666666
  }
})
resource("ImageRegion")("UISharedSpacesShareTutorial3")({
  image = "UITutorialAtlasSharedSpaces",
  uv = {
    0,
    0.6666666666666666,
    0.3333333333333333,
    1
  }
})
resource("ImageRegion")("UISharedSpacesShareTutorial4")({
  image = "UITutorialAtlasSharedSpaces",
  uv = {
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666,
    1
  }
})
resource("ImageRegion")("UITutorialPenpal")({
  image = "UITutorialAtlasSharedSpaces",
  uv = {
    0.6666666666666666,
    0.6666666666666666,
    1,
    1
  }
})
resourceref("Image")("UITutorialAtlas02")
resource("ImageRegion")("UITutorialHeal")({
  image = "UITutorialAtlas02",
  uv = {
    0,
    0,
    0.3333333333333333,
    0.3333333333333333
  }
})
resource("ImageRegion")("UITutorialBetterTogether")({
  image = "UITutorialAtlas02",
  uv = {
    0.3333333333333333,
    0,
    0.6666666666666666,
    0.3333333333333333
  }
})
resource("ImageRegion")("UITutorialGrowCloser")({
  image = "UITutorialAtlas02",
  uv = {
    0.6666666666666666,
    0,
    1,
    0.3333333333333333
  }
})
resource("ImageRegion")("UITutorialStayInTouch")({
  image = "UITutorialAtlas02",
  uv = {
    0,
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666
  }
})
resource("ImageRegion")("UITutorialShowAppreciation")({
  image = "UITutorialAtlas02",
  uv = {
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666
  }
})
resource("ImageRegion")("UITutorialExpressYourself")({
  image = "UITutorialAtlas02",
  uv = {
    0.6666666666666666,
    0.3333333333333333,
    1,
    0.6666666666666666
  }
})
resource("ImageRegion")("UITutorialUnlockGates")({
  image = "UITutorialAtlas02",
  uv = {
    0,
    0.6666666666666666,
    0.3333333333333333,
    1
  }
})
resource("ImageRegion")("UITutorialFindAll")({
  image = "UITutorialAtlas02",
  uv = {
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666,
    1
  }
})
resource("ImageRegion")("UITutorialAscendFriendship")({
  image = "UITutorialAtlas02",
  uv = {
    0.6666666666666666,
    0.6666666666666666,
    1,
    1
  }
})
resourceref("Image")("UITutorialAtlas03")
resource("ImageRegion")("UITutorialEnhanceExpressions")({
  image = "UITutorialAtlas03",
  uv = {
    0,
    0,
    0.3333333333333333,
    0.3333333333333333
  }
})
resource("ImageRegion")("UITutorialReceiveBlessing")({
  image = "UITutorialAtlas03",
  uv = {
    0.3333333333333333,
    0,
    0.6666666666666666,
    0.3333333333333333
  }
})
resource("ImageRegion")("UITutorialCompleteConstellation")({
  image = "UITutorialAtlas03",
  uv = {
    0.6666666666666666,
    0,
    1,
    0.3333333333333333
  }
})
resource("ImageRegion")("UITutorialDressUp")({
  image = "UITutorialAtlas03",
  uv = {
    0,
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666
  }
})
resource("ImageRegion")("UITutorialAdventureAwaits")({
  image = "UITutorialAtlas03",
  uv = {
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666
  }
})
resource("ImageRegion")("UITutorialEachKingdom")({
  image = "UITutorialAtlas03",
  uv = {
    0.6666666666666666,
    0.3333333333333333,
    1,
    0.6666666666666666
  }
})
resource("ImageRegion")("UITutorialFindSpirits")({
  image = "UITutorialAtlas03",
  uv = {
    0,
    0.6666666666666666,
    0.3333333333333333,
    1
  }
})
resource("ImageRegion")("UITutorialOfferHearts")({
  image = "UITutorialAtlas03",
  uv = {
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666,
    1
  }
})
resource("ImageRegion")("UITutorialDressUp2")({
  image = "UITutorialAtlas03",
  uv = {
    0.6666666666666666,
    0.6666666666666666,
    1,
    1
  }
})
resourceref("Image")("UITutorialAtlas04")
resource("ImageRegion")("UITutorialVisitingSpirits")({
  image = "UITutorialAtlas04",
  uv = {
    0,
    0,
    0.3333333333333333,
    0.3333333333333333
  }
})
resource("ImageRegion")("UITutorialPerformTogether")({
  image = "UITutorialAtlas04",
  uv = {
    0.3333333333333333,
    0,
    0.6666666666666666,
    0.3333333333333333
  }
})
resource("ImageRegion")("UITutorialUnlockRewards")({
  image = "UITutorialAtlas04",
  uv = {
    0.6666666666666666,
    0,
    1,
    0.3333333333333333
  }
})
resource("ImageRegion")("UITutorialFindSpirits2")({
  image = "UITutorialAtlas04",
  uv = {
    0,
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666
  }
})
resource("ImageRegion")("UITutorialRequirePass")({
  image = "UITutorialAtlas04",
  uv = {
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666
  }
})
resource("ImageRegion")("UITutorialPreview")({
  image = "UITutorialAtlas04",
  uv = {
    0.6666666666666666,
    0.3333333333333333,
    1,
    0.6666666666666666
  }
})
resource("ImageRegion")("UITutorialVariousForms")({
  image = "UITutorialAtlas04",
  uv = {
    0,
    0.6666666666666666,
    0.3333333333333333,
    1
  }
})
resource("ImageRegion")("UITutorialEventCurrency")({
  image = "UITutorialAtlas04",
  uv = {
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666,
    1
  }
})
resourceref("Image")("UITutorialAtlasTrust")
resource("ImageRegion")("UITutorialAtlasTrust01")({
  image = "UITutorialAtlasTrust",
  uv = {
    0,
    0,
    0.3333333333333333,
    0.3333333333333333
  }
})
resource("ImageRegion")("UITutorialAtlasTrust02")({
  image = "UITutorialAtlasTrust",
  uv = {
    0.3333333333333333,
    0,
    0.6666666666666666,
    0.3333333333333333
  }
})
resource("ImageRegion")("UITutorialAtlasTrust03")({
  image = "UITutorialAtlasTrust",
  uv = {
    0.6666666666666666,
    0,
    1,
    0.3333333333333333
  }
})
resource("ImageRegion")("UITutorialAtlasTrust04")({
  image = "UITutorialAtlasTrust",
  uv = {
    0,
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666
  }
})
resource("ImageRegion")("UITutorialAtlasTrust05")({
  image = "UITutorialAtlasTrust",
  uv = {
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666
  }
})
resource("ImageRegion")("UITutorialAtlasTrust06")({
  image = "UITutorialAtlasTrust",
  uv = {
    0.6666666666666666,
    0.3333333333333333,
    1,
    0.6666666666666666
  }
})
resource("ImageRegion")("UITutorialAtlasTrust07")({
  image = "UITutorialAtlasTrust",
  uv = {
    0,
    0.6666666666666666,
    0.3333333333333333,
    1
  }
})
resource("ImageRegion")("UITutorialAtlasTrust08")({
  image = "UITutorialAtlasTrust",
  uv = {
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666,
    1
  }
})
resourceref("Image")("UICollectible_Day01_")
resource("ImageRegion")("UICollectible_Day02")({
  image = "UICollectible_Day01_",
  uv = {
    0,
    0,
    1,
    0.5
  }
})
resource("ImageRegion")("UICollectibleLine")({
  image = "UICollectible_Day01_",
  uv = {
    0,
    0.5,
    1,
    0.625
  }
})
resource("ImageRegion")("UICollectibleStarFx")({
  image = "UICollectible_Day01_",
  uv = {
    0,
    0.625,
    0.375,
    1
  }
})
resource("ImageRegion")("UICollectibleStar")({
  image = "UICollectible_Day01_",
  uv = {
    0.375,
    0.625,
    0.5,
    0.75
  }
})
resource("ImageRegion")("UICollectibleStarGlow")({
  image = "UICollectible_Day01_",
  uv = {
    0.375,
    0.75,
    0.625,
    1
  }
})
resourceref("Image")("UiMiscCircle")
resource("ImageRegion")("TguiMaskWhite")({
  image = "UiMiscCircle",
  uv = {
    0.3333333333333333,
    0.3333333333333333,
    0.6666666666666666,
    0.6666666666666666
  }
})
resource("ImageRegion")("TguiMaskCircle")({
  image = "UiMiscCircle",
  uv = {
    0,
    0,
    1,
    1
  }
})
resourceref("Image")("UIPremulAtlas1")
resourceref("Image")("UIPremulAtlas2")
resourceref("Image")("UIPremulAtlas3")
resourceref("Image")("UIPremulAtlas4")
resource("ImageRegion")("S26SilenceCardRibbon")({
  image = "UIPremulAtlas4",
  uv = {
    0,
    0.75,
    0.75,
    1
  }
})
resource("ImageRegion")("S26SilenceCardStar")({
  image = "UIPremulAtlas4",
  uv = {
    0.75,
    0.75,
    1,
    1
  }
})
resource("ImageRegion")("UiMenuDialGradient")({
  image = "UIPremulAtlas4",
  uv = {
    0,
    0.15234375,
    0.82421875,
    0.3046875
  }
})
resource("ImageRegion")("UiMenuDialLine")({
  image = "UIPremulAtlas4",
  uv = {
    0,
    0,
    0.82421875,
    0.15234375
  }
})
resource("ImageRegion")("UiMenuSpeechBg")({
  image = "UIPremulAtlas1",
  uv = {
    0.376953125,
    0.591796875,
    0.537109375,
    0.751953125
  }
})
resource("ImageRegion")("UiMenuSpeechOutline")({
  image = "UIPremulAtlas1",
  uv = {
    0.376953125,
    0.431640625,
    0.537109375,
    0.591796875
  }
})
resource("ImageRegion")("UiMenuSpeechShadow")({
  image = "UIPremulAtlas1",
  uv = {
    0.537109375,
    0.431640625,
    0.705078125,
    0.591796875
  }
})
resource("ImageRegion")("UiMenuSpinner")({
  image = "UIPremulAtlas1",
  uv = {
    0.49609375,
    0.166015625,
    0.62109375,
    0.291015625
  }
})
resource("ImageRegion")("UiMenuSpinnerThin")({
  image = "UIPremulAtlas1",
  uv = {
    0.37109375,
    0.166015625,
    0.49609375,
    0.291015625
  }
})
resource("ImageRegion")("UiMenuSpinner_Small")({
  image = "UIPremulAtlas1",
  uv = {
    0,
    0.03125,
    0.0625,
    0.09375
  }
})
resource("ImageRegion")("UiMenuStar")({
  image = "UIPremulAtlas1",
  uv = {
    0.24609375,
    0.291015625,
    0.376953125,
    0.421875
  }
})
resource("ImageRegion")("UiMenuStarHeartBg")({
  image = "UIPremulAtlas1",
  uv = {
    0.376953125,
    0.291015625,
    0.529296875,
    0.431640625
  }
})
resource("ImageRegion")("UiMenuStarHeartFg")({
  image = "UIPremulAtlas1",
  uv = {
    0.24609375,
    0.166015625,
    0.37109375,
    0.291015625
  }
})
resource("ImageRegion")("UiMenuStarOutlineSmall")({
  image = "UIPremulAtlas1",
  uv = {
    0.12890625,
    0.166015625,
    0.24609375,
    0.283203125
  }
})
resource("ImageRegion")("UiMiscCircleShadow")({
  image = "UIPremulAtlas1",
  uv = {
    0.12890625,
    0.095703125,
    0.19921875,
    0.166015625
  }
})
resource("ImageRegion")("UiMiscCircleShadowSmall")({
  image = "UIPremulAtlas1",
  uv = {
    0.0625,
    0.095703125,
    0.12890625,
    0.162109375
  }
})
resource("ImageRegion")("UiMiscCircleShadowSmallFaint")({
  image = "UIPremulAtlas1",
  uv = {
    0.0625,
    0.03125,
    0.126953125,
    0.095703125
  }
})
resource("ImageRegion")("UiMiscCircleShadowVerySmall")({
  image = "UIPremulAtlas1",
  uv = {
    0,
    0,
    0.03125,
    0.03125
  }
})
resource("ImageRegion")("UiMiscParticleFuzzy")({
  image = "UIPremulAtlas1",
  uv = {
    0.03125,
    0,
    0.064453125,
    0.03125
  }
})
resource("ImageRegion")("UiMiscR2Shadow")({
  image = "UIPremulAtlas1",
  uv = {
    0,
    0.09375,
    0.0625,
    0.15625
  }
})
resource("ImageRegion")("UiMiscRTShadow")({
  image = "UIPremulAtlas1",
  uv = {
    0,
    0.15625,
    0.0625,
    0.21875
  }
})
resource("ImageRegion")("UiStarBg")({
  image = "UIPremulAtlas1",
  uv = {
    0.537109375,
    0.591796875,
    0.876953125,
    0.931640625
  }
})
resource("ImageRegion")("UiStarBgLarge")({
  image = "UIPremulAtlas3",
  uv = {
    0.5,
    0,
    1,
    0.5
  }
})
resource("ImageRegion")("UiStarFg")({
  image = "UIPremulAtlas2",
  uv = {
    0,
    0,
    0.33984375,
    0.33984375
  }
})
resource("ImageRegion")("UiStarFgLarge")({
  image = "UIPremulAtlas2",
  uv = {
    0.33984375,
    0.33984375,
    0.83984375,
    0.83984375
  }
})
resource("ImageRegion")("UiStarLitBg")({
  image = "UIPremulAtlas2",
  uv = {
    0,
    0.33984375,
    0.33984375,
    0.681640625
  }
})
resource("ImageRegion")("UiStarLitBgLarge")({
  image = "UIPremulAtlas3",
  uv = {
    0,
    0,
    0.5,
    0.5
  }
})
resource("ImageRegion")("UiStarLitFg")({
  image = "UIPremulAtlas2",
  uv = {
    0.33984375,
    0,
    0.6796875,
    0.33984375
  }
})
resource("ImageRegion")("UiStarLitFgLarge")({
  image = "UIPremulAtlas3",
  uv = {
    0,
    0.5,
    0.5,
    1
  }
})
resourceref("Image")("UIFullLumAtlas1")
resourceref("Image")("UIFullLumAtlas2")
resource("ImageRegion")("UIBorderFilledSmall")({
  image = "UIFullLumAtlas1",
  uv = {
    0,
    0,
    0.009765625,
    0.009765625
  }
})
resource("ImageRegion")("UIRingThick")({
  image = "UIFullLumAtlas2",
  uv = {
    0,
    0.25,
    0.125,
    0.375
  }
})
resource("ImageRegion")("UiAnalogLeftPushDownNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.806640625,
    0.63671875,
    0.931640625,
    0.76171875
  }
})
resource("ImageRegion")("UiAnalogLeftPushLeftNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.556640625,
    0.63671875,
    0.681640625,
    0.76171875
  }
})
resource("ImageRegion")("UiAnalogLeftPushRightNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.556640625,
    0.26171875,
    0.681640625,
    0.38671875
  }
})
resource("ImageRegion")("UiAnalogLeftPushUpNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.681640625,
    0.26171875,
    0.806640625,
    0.38671875
  }
})
resource("ImageRegion")("UiAnalogRightPushDownNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.306640625,
    0.38671875,
    0.431640625,
    0.51171875
  }
})
resource("ImageRegion")("UiAnalogRightPushLeftNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.306640625,
    0.63671875,
    0.431640625,
    0.76171875
  }
})
resource("ImageRegion")("UiAnalogRightPushRightNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.431640625,
    0.38671875,
    0.556640625,
    0.51171875
  }
})
resource("ImageRegion")("UiAnalogRightPushUpNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.556640625,
    0.38671875,
    0.681640625,
    0.51171875
  }
})
resource("ImageRegion")("UiBorderFlatBottom")({
  image = "UIFullLumAtlas2",
  uv = {
    0.125,
    0,
    0.25,
    0.125
  }
})
resource("ImageRegion")("UiBorderThickSmall")({
  image = "UIFullLumAtlas1",
  uv = {
    0.015625,
    0.220703125,
    0.046875,
    0.251953125
  }
})
resource("ImageRegion")("UiBorderThinLarge")({
  image = "UIFullLumAtlas2",
  uv = {
    0.25,
    0,
    0.375,
    0.125
  }
})
resource("ImageRegion")("UiBorderThinMedium")({
  image = "UIFullLumAtlas2",
  uv = {
    0.5,
    0,
    0.625,
    0.125
  }
})
resource("ImageRegion")("UiBorderThinSmall")({
  image = "UIFullLumAtlas2",
  uv = {
    0.625,
    0,
    0.75,
    0.125
  }
})
resource("ImageRegion")("UiButtonANx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.015625,
    0.064453125,
    0.046875,
    0.095703125
  }
})
resource("ImageRegion")("UiButtonANxSmall")({
  image = "UIFullLumAtlas1",
  uv = {
    0,
    0.009765625,
    0.015625,
    0.025390625
  }
})
resource("ImageRegion")("UiButtonBNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.015625,
    0.283203125,
    0.046875,
    0.314453125
  }
})
resource("ImageRegion")("UiButtonBNxSmall")({
  image = "UIFullLumAtlas1",
  uv = {
    0,
    0.041015625,
    0.015625,
    0.056640625
  }
})
resource("ImageRegion")("UiButtonDownNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.34375,
    0.19921875,
    0.40625,
    0.26171875
  }
})
resource("ImageRegion")("UiButtonL3Nx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.09375,
    0.13671875,
    0.15625,
    0.19921875
  }
})
resource("ImageRegion")("UiButtonLeftNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.09375,
    0.19921875,
    0.15625,
    0.26171875
  }
})
resource("ImageRegion")("UiButtonMinusNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.09375,
    0.26171875,
    0.15625,
    0.32421875
  }
})
resource("ImageRegion")("UiButtonPlusNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.09375,
    0.32421875,
    0.15625,
    0.38671875
  }
})
resource("ImageRegion")("UiButtonR3Nx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.09375,
    0.38671875,
    0.15625,
    0.44921875
  }
})
resource("ImageRegion")("UiButtonRightNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.09375,
    0.44921875,
    0.15625,
    0.51171875
  }
})
resource("ImageRegion")("UiButtonUpNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.09375,
    0.51171875,
    0.15625,
    0.57421875
  }
})
resource("ImageRegion")("UiButtonXNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.015625,
    0.126953125,
    0.046875,
    0.158203125
  }
})
resource("ImageRegion")("UiButtonXNxSmall")({
  image = "UIFullLumAtlas1",
  uv = {
    0,
    0.056640625,
    0.015625,
    0.072265625
  }
})
resource("ImageRegion")("UiButtonYNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.015625,
    0.189453125,
    0.046875,
    0.220703125
  }
})
resource("ImageRegion")("UiButtonYNxSmall")({
  image = "UIFullLumAtlas1",
  uv = {
    0.015625,
    0.158203125,
    0.046875,
    0.189453125
  }
})
resource("ImageRegion")("UiCandleGlow")({
  image = "UIFullLumAtlas1",
  uv = {
    0.681640625,
    0.63671875,
    0.806640625,
    0.76171875
  }
})
resource("ImageRegion")("UiCandleGlowMasked")({
  image = "UIFullLumAtlas1",
  uv = {
    0.556640625,
    0.76171875,
    0.681640625,
    0.88671875
  }
})
resource("ImageRegion")("UiCandleLensFlare")({
  image = "UIFullLumAtlas1",
  uv = {
    0.431640625,
    0.63671875,
    0.556640625,
    0.76171875
  }
})
resource("ImageRegion")("UiGradientShout")({
  image = "UIFullLumAtlas1",
  uv = {
    0.21875,
    0.26171875,
    0.306640625,
    0.349609375
  }
})
resource("ImageRegion")("UiGradientShout_Large")({
  image = "UIFullLumAtlas2",
  uv = {
    0.125,
    0.125,
    0.375,
    0.375
  }
})
resource("ImageRegion")("UiHudChevronBroken")({
  image = "UIFullLumAtlas1",
  uv = {
    0.28125,
    0.13671875,
    0.34375,
    0.19921875
  }
})
resource("ImageRegion")("UiHudChevronBrokenPartial")({
  image = "UIFullLumAtlas1",
  uv = {
    0.34375,
    0.13671875,
    0.40625,
    0.19921875
  }
})
resource("ImageRegion")("UiHudChevronGlow")({
  image = "UIFullLumAtlas1",
  uv = {
    0.681640625,
    0.38671875,
    0.806640625,
    0.51171875
  }
})
resource("ImageRegion")("UiHudChevronGlowLvl1")({
  image = "UIFullLumAtlas1",
  uv = {
    0.13671875,
    0.033203125,
    0.181640625,
    0.078125
  }
})
resource("ImageRegion")("UiHudChevronGlowLvl2")({
  image = "UIFullLumAtlas1",
  uv = {
    0.046875,
    0.033203125,
    0.091796875,
    0.078125
  }
})
resource("ImageRegion")("UiHudChevronGlowLvl3")({
  image = "UIFullLumAtlas1",
  uv = {
    0.091796875,
    0.033203125,
    0.13671875,
    0.078125
  }
})
resource("ImageRegion")("UiHudChevronMed")({
  image = "UIFullLumAtlas1",
  uv = {
    0.65625,
    0.13671875,
    0.71875,
    0.19921875
  }
})
resource("ImageRegion")("UiHudChevronPulse")({
  image = "UIFullLumAtlas1",
  uv = {
    0.306640625,
    0.51171875,
    0.431640625,
    0.63671875
  }
})
resource("ImageRegion")("UiHudChevronSmall")({
  image = "UIFullLumAtlas1",
  uv = {
    0.015625,
    0.009765625,
    0.0390625,
    0.033203125
  }
})
resource("ImageRegion")("UiHudDiamondFill")({
  image = "UIFullLumAtlas1",
  uv = {
    0.84375,
    0.13671875,
    0.90625,
    0.19921875
  }
})
resource("ImageRegion")("UiHudDiamondOutline")({
  image = "UIFullLumAtlas1",
  uv = {
    0.90625,
    0.13671875,
    0.96875,
    0.19921875
  }
})
resource("ImageRegion")("UiHudShatterTri")({
  image = "UIFullLumAtlas1",
  uv = {
    0.015625,
    0.033203125,
    0.046875,
    0.064453125
  }
})
resource("ImageRegion")("UiLeftButtonNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.15625,
    0.26171875,
    0.21875,
    0.32421875
  }
})
resource("ImageRegion")("UiLeftTriggerNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.15625,
    0.32421875,
    0.21875,
    0.38671875
  }
})
resource("ImageRegion")("UiMenuAccountBadge")({
  image = "UIFullLumAtlas1",
  uv = {
    0.15625,
    0.38671875,
    0.21875,
    0.44921875
  }
})
resource("ImageRegion")("UiMenuBadgePen")({
  image = "UIFullLumAtlas1",
  uv = {
    0.15625,
    0.44921875,
    0.21875,
    0.51171875
  }
})
resource("ImageRegion")("UiMenuCandleInnerGlow1")({
  image = "UIFullLumAtlas1",
  uv = {
    0.15625,
    0.51171875,
    0.21875,
    0.57421875
  }
})
resource("ImageRegion")("UiMenuCandleInnerGlow2")({
  image = "UIFullLumAtlas1",
  uv = {
    0.15625,
    0.57421875,
    0.21875,
    0.63671875
  }
})
resource("ImageRegion")("UiMenuCandleInnerGlow3")({
  image = "UIFullLumAtlas1",
  uv = {
    0.15625,
    0.63671875,
    0.21875,
    0.69921875
  }
})
resource("ImageRegion")("UiMenuConstellationArrowRight")({
  image = "UIFullLumAtlas1",
  uv = {
    0.046875,
    0.078125,
    0.09375,
    0.125
  }
})
resource("ImageRegion")("UiMenuDiamondSmall")({
  image = "UIFullLumAtlas1",
  uv = {
    0,
    0.025390625,
    0.015625,
    0.041015625
  }
})
resource("ImageRegion")("UiMenuDivingShadow")({
  image = "UIFullLumAtlas1",
  uv = {
    0.431640625,
    0.26171875,
    0.556640625,
    0.38671875
  }
})
resource("ImageRegion")("UiMenuFly")({
  image = "UIFullLumAtlas1",
  uv = {
    0.306640625,
    0.26171875,
    0.431640625,
    0.38671875
  }
})
resource("ImageRegion")("UiMenuFlyShadow")({
  image = "UIFullLumAtlas2",
  uv = {
    0,
    0,
    0.125,
    0.125
  }
})
resource("ImageRegion")("UiMenuFriendsTab")({
  image = "UIFullLumAtlas1",
  uv = {
    0.21875,
    0.19921875,
    0.28125,
    0.26171875
  }
})
resource("ImageRegion")("UiMenuHover")({
  image = "UIFullLumAtlas2",
  uv = {
    0.875,
    0,
    1,
    0.125
  }
})
resource("ImageRegion")("UiMenuHoverShadow")({
  image = "UIFullLumAtlas1",
  uv = {
    0.431640625,
    0.51171875,
    0.556640625,
    0.63671875
  }
})
resource("ImageRegion")("UiMenuInfo")({
  image = "UIFullLumAtlas1",
  uv = {
    0.15625,
    0.88671875,
    0.21875,
    0.94921875
  }
})
resource("ImageRegion")("UiMenuLinkAccount")({
  image = "UIFullLumAtlas1",
  uv = {
    0.15625,
    0.82421875,
    0.21875,
    0.88671875
  }
})
resource("ImageRegion")("UiMenuNewWindow")({
  image = "UIFullLumAtlas1",
  uv = {
    0.15625,
    0.76171875,
    0.21875,
    0.82421875
  }
})
resource("ImageRegion")("UiMenuNextArrow")({
  image = "UIFullLumAtlas1",
  uv = {
    0.15625,
    0.69921875,
    0.21875,
    0.76171875
  }
})
resource("ImageRegion")("UiMenuNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.15625,
    0.19921875,
    0.21875,
    0.26171875
  }
})
resource("ImageRegion")("UiMenuPerson")({
  image = "UIFullLumAtlas1",
  uv = {
    0.78125,
    0.13671875,
    0.84375,
    0.19921875
  }
})
resource("ImageRegion")("UiMenuPlus")({
  image = "UIFullLumAtlas1",
  uv = {
    0.71875,
    0.13671875,
    0.78125,
    0.19921875
  }
})
resource("ImageRegion")("UiMenuQRWhite")({
  image = "UIFullLumAtlas1",
  uv = {
    0.59375,
    0.13671875,
    0.65625,
    0.19921875
  }
})
resource("ImageRegion")("UiMenuRandomize")({
  image = "UIFullLumAtlas1",
  uv = {
    0.53125,
    0.13671875,
    0.59375,
    0.19921875
  }
})
resource("ImageRegion")("UiMenuSwimmingShadow")({
  image = "UIFullLumAtlas1",
  uv = {
    0.306640625,
    0.76171875,
    0.431640625,
    0.88671875
  }
})
resource("ImageRegion")("UiMenuTabArrow")({
  image = "UIFullLumAtlas1",
  uv = {
    0.46875,
    0.13671875,
    0.53125,
    0.19921875
  }
})
resource("ImageRegion")("UiMenuTabCreateInvite")({
  image = "UIFullLumAtlas1",
  uv = {
    0.40625,
    0.13671875,
    0.46875,
    0.19921875
  }
})
resource("ImageRegion")("UiMenuTabOnlineFriends")({
  image = "UIFullLumAtlas1",
  uv = {
    0.21875,
    0.13671875,
    0.28125,
    0.19921875
  }
})
resource("ImageRegion")("UiMenuTabReceivedInvite")({
  image = "UIFullLumAtlas1",
  uv = {
    0.15625,
    0.13671875,
    0.21875,
    0.19921875
  }
})
resource("ImageRegion")("UiMenuTabSentInvite")({
  image = "UIFullLumAtlas1",
  uv = {
    0.09375,
    0.88671875,
    0.15625,
    0.94921875
  }
})
resource("ImageRegion")("UiMenuUnlinkAccount")({
  image = "UIFullLumAtlas1",
  uv = {
    0.09375,
    0.82421875,
    0.15625,
    0.88671875
  }
})
resource("ImageRegion")("UiMessageTypeContent")({
  image = "UIFullLumAtlas1",
  uv = {
    0.431640625,
    0.76171875,
    0.556640625,
    0.88671875
  }
})
resource("ImageRegion")("UiMessageTypeEvent")({
  image = "UIFullLumAtlas1",
  uv = {
    0.556640625,
    0.51171875,
    0.681640625,
    0.63671875
  }
})
resource("ImageRegion")("UiMessageTypeMisc")({
  image = "UIFullLumAtlas1",
  uv = {
    0.681640625,
    0.51171875,
    0.806640625,
    0.63671875
  }
})
resource("ImageRegion")("UiMessageTypeUrgent")({
  image = "UIFullLumAtlas1",
  uv = {
    0.806640625,
    0.51171875,
    0.931640625,
    0.63671875
  }
})
resource("ImageRegion")("UiMiscCheckSmall")({
  image = "UIFullLumAtlas1",
  uv = {
    0.015625,
    0.251953125,
    0.046875,
    0.283203125
  }
})
resource("ImageRegion")("UiMiscCheckWhite")({
  image = "UIFullLumAtlas1",
  uv = {
    0.09375,
    0.76171875,
    0.15625,
    0.82421875
  }
})
resource("ImageRegion")("UiMiscGradientSlice")({
  image = "UIFullLumAtlas1",
  uv = {
    0.0390625,
    0.009765625,
    0.1015625,
    0.025390625
  }
})
resource("ImageRegion")("UiMiscInteractOuter")({
  image = "UIFullLumAtlas1",
  uv = {
    0.015625,
    0.314453125,
    0.046875,
    0.345703125
  }
})
resource("ImageRegion")("UiMiscLensFlare")({
  image = "UIFullLumAtlas1",
  uv = {
    0.806640625,
    0.76171875,
    0.931640625,
    0.88671875
  }
})
resource("ImageRegion")("UiMiscParticle")({
  image = "UIFullLumAtlas1",
  uv = {
    0.21875,
    0.349609375,
    0.306640625,
    0.4375
  }
})
resource("ImageRegion")("UiMiscPhone")({
  image = "UIFullLumAtlas1",
  uv = {
    0.09375,
    0.69921875,
    0.15625,
    0.76171875
  }
})
resource("ImageRegion")("UiMiscXWhite")({
  image = "UIFullLumAtlas1",
  uv = {
    0.09375,
    0.63671875,
    0.15625,
    0.69921875
  }
})
resource("ImageRegion")("UiPulse")({
  image = "UIFullLumAtlas2",
  uv = {
    0.375,
    0,
    0.5,
    0.125
  }
})
resource("ImageRegion")("UiRightButtonNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.09375,
    0.57421875,
    0.15625,
    0.63671875
  }
})
resource("ImageRegion")("UiRightTriggerNx")({
  image = "UIFullLumAtlas1",
  uv = {
    0.28125,
    0.19921875,
    0.34375,
    0.26171875
  }
})
resource("ImageRegion")("UiRingGradientOuter")({
  image = "UIFullLumAtlas2",
  uv = {
    0.75,
    0,
    0.875,
    0.125
  }
})
resource("ImageRegion")("UiTagBg")({
  image = "UIFullLumAtlas1",
  uv = {
    0.09375,
    0.078125,
    0.15234375,
    0.13671875
  }
})
resource("ImageRegion")("UiToggleBgShadow")({
  image = "UIFullLumAtlas1",
  uv = {
    0.806640625,
    0.38671875,
    0.931640625,
    0.51171875
  }
})
resource("ImageRegion")("UiToggleButtonShadow")({
  image = "UIFullLumAtlas2",
  uv = {
    0,
    0.125,
    0.125,
    0.25
  }
})
resourceref("Image")("UiMapBgAtlas")
resource("ImageRegion")("UiMap_Pattern_Hills04")({
  image = "UiMapBgAtlas",
  uv = {
    0,
    0.749,
    0.1787,
    1
  }
})
resource("ImageRegion")("UiMapOreo01")({
  image = "UiMapBgAtlas",
  uv = {
    0.7915,
    0.8604,
    0.9997,
    0.9998
  }
})
resource("ImageRegion")("UiMap_Pattern_Mountain03")({
  image = "UiMapBgAtlas",
  uv = {
    0.1914,
    0.8765,
    0.4424,
    1
  }
})
resource("ImageRegion")("UiMapBirdSingle4")({
  image = "UiMapBgAtlas",
  uv = {
    0.3887,
    0.7603,
    0.409,
    0.7723
  }
})
resource("ImageRegion")("UiMapWhale02")({
  image = "UiMapBgAtlas",
  uv = {
    0.8262,
    0.6982,
    0.9995,
    0.8535
  }
})
resource("ImageRegion")("UiMap_Pattern_Waves02")({
  image = "UiMapBgAtlas",
  uv = {
    0.709,
    0.7021,
    0.8193,
    0.8413
  }
})
resource("ImageRegion")("UiMap_Environment_Sunset_Town1")({
  image = "UiMapBgAtlas",
  uv = {
    0.6245,
    0.6514,
    0.7002,
    0.7695
  }
})
resource("ImageRegion")("UiMap_Pattern_PointyMountain05")({
  image = "UiMapBgAtlas",
  uv = {
    0.4502,
    0.7827,
    0.7012,
    1
  }
})
resource("ImageRegion")("UiMap_Pattern_Desert04")({
  image = "UiMapBgAtlas",
  uv = {
    0.1914,
    0.7861,
    0.4424,
    0.8682
  }
})
resource("ImageRegion")("UiMap_Environment_Sunset_FlyRace_City1")({
  image = "UiMapBgAtlas",
  uv = {
    0.1914,
    0.749,
    0.2144,
    0.7778
  }
})
resource("ImageRegion")("UiMap_Environment_Sunset_Town3")({
  image = "UiMapBgAtlas",
  uv = {
    0.3843,
    0.7236,
    0.4031,
    0.75
  }
})
resource("ImageRegion")("UiMapEnvironment_Sunset_Citadel")({
  image = "UiMapBgAtlas",
  uv = {
    0.5269,
    0.6528,
    0.6157,
    0.769
  }
})
resource("ImageRegion")("UiMap_Environment_Sunset_FlyRace_City2")({
  image = "UiMapBgAtlas",
  uv = {
    0.3379,
    0.605,
    0.4526,
    0.687
  }
})
resource("ImageRegion")("UiMap_Environment_Sunset_Race")({
  image = "UiMapBgAtlas",
  uv = {
    0.2271,
    0.6992,
    0.3748,
    0.7712
  }
})
resource("ImageRegion")("UiMapManta07")({
  image = "UiMapBgAtlas",
  uv = {
    0.8745,
    0.5693,
    0.9998,
    0.6415
  }
})
resource("ImageRegion")("UiMapBirdSingle2")({
  image = "UiMapBgAtlas",
  uv = {
    0.8428,
    0.6025,
    0.8612,
    0.6248
  }
})
resource("ImageRegion")("UiMapDuskTriangleCreature")({
  image = "UiMapBgAtlas",
  uv = {
    0.7139,
    0.5718,
    0.8359,
    0.6938
  }
})
resource("ImageRegion")("UiMap_Environment_Night_Desert")({
  image = "UiMapBgAtlas",
  uv = {
    0.5312,
    0.5459,
    0.6992,
    0.6436
  }
})
resource("ImageRegion")("UiMapKrill02")({
  image = "UiMapBgAtlas",
  uv = {
    0.1841,
    0.5176,
    0.5003,
    0.5926
  }
})
resource("ImageRegion")("UiMap_Pattern_Trees01")({
  image = "UiMapBgAtlas",
  uv = {
    0,
    0.6006,
    0.2134,
    0.7373
  }
})
resource("ImageRegion")("UiMapBirdSingle1")({
  image = "UiMapBgAtlas",
  uv = {
    0.8433,
    0.5718,
    0.8644,
    0.5958
  }
})
resource("ImageRegion")("UiMapRainCreature02")({
  image = "UiMapBgAtlas",
  uv = {
    0.186,
    0.4507,
    0.2671,
    0.5112
  }
})
resource("ImageRegion")("UiMapJellyfish05")({
  image = "UiMapBgAtlas",
  uv = {
    0.71,
    0.4434,
    0.7603,
    0.4937
  }
})
resource("ImageRegion")("UiMapManta01")({
  image = "UiMapBgAtlas",
  uv = {
    0.7192,
    0.5103,
    0.7998,
    0.5624
  }
})
resource("ImageRegion")("UiMap_Environment_Sunset_Town2")({
  image = "UiMapBgAtlas",
  uv = {
    0.7681,
    0.4438,
    0.7938,
    0.4873
  }
})
resource("ImageRegion")("UiMapRainCreature01")({
  image = "UiMapBgAtlas",
  uv = {
    0.8076,
    0.4414,
    0.9997,
    0.5621
  }
})
resource("ImageRegion")("UiMapCloud23")({
  image = "UiMapBgAtlas",
  uv = {
    0.4526,
    0.1756,
    0.6284,
    0.4932
  }
})
resource("ImageRegion")("UiMapCloud14")({
  image = "UiMapBgAtlas",
  uv = {
    0.3081,
    0.1756,
    0.4461,
    0.4727
  }
})
resource("ImageRegion")("UiMapKrill04")({
  image = "UiMapBgAtlas",
  uv = {
    0.248,
    0.2255,
    0.3021,
    0.4326
  }
})
resource("ImageRegion")("UiMapManta02")({
  image = "UiMapBgAtlas",
  uv = {
    0.2271,
    0.6035,
    0.3296,
    0.687
  }
})
resource("ImageRegion")("UiMapCloud05")({
  image = "UiMapBgAtlas",
  uv = {
    0,
    0.2251,
    0.2425,
    0.4429
  }
})
resource("ImageRegion")("UiMapCloud20")({
  image = "UiMapBgAtlas",
  uv = {
    0,
    0.4507,
    0.1752,
    0.5878
  }
})
resource("ImageRegion")("UiMapManta04")({
  image = "UiMapBgAtlas",
  uv = {
    0.9116,
    0.3442,
    0.9995,
    0.4321
  }
})
resource("ImageRegion")("UiMapBirdSingle3")({
  image = "UiMapBgAtlas",
  uv = {
    0.4868,
    0.7598,
    0.4994,
    0.7709
  }
})
resource("ImageRegion")("UiMapCrab03")({
  image = "UiMapBgAtlas",
  uv = {
    0.4282,
    0.7373,
    0.4682,
    0.7711
  }
})
resource("ImageRegion")("UiMapCrab02")({
  image = "UiMapBgAtlas",
  uv = {
    0.4238,
    0.7021,
    0.4735,
    0.7289
  }
})
resource("ImageRegion")("UiMap_Environment_Sunset_YetiPark")({
  image = "UiMapBgAtlas",
  uv = {
    0.481,
    0.7017,
    0.5063,
    0.751
  }
})
resource("ImageRegion")("UiMapCloud15")({
  image = "UiMapBgAtlas",
  uv = {
    0.9263,
    2.0E-4,
    0.9993,
    0.2715
  }
})
resource("ImageRegion")("UiMapManta06")({
  image = "UiMapBgAtlas",
  uv = {
    0.8638,
    0.1676,
    0.9221,
    0.2598
  }
})
resource("ImageRegion")("UiMapCloud17")({
  image = "UiMapBgAtlas",
  uv = {
    0.6367,
    0.2637,
    0.8999,
    0.4375
  }
})
resource("ImageRegion")("UiMapBirdSingle6")({
  image = "UiMapBgAtlas",
  uv = {
    0.6382,
    0.1792,
    0.6502,
    0.209
  }
})
resource("ImageRegion")("UiMapCloud_Small6_Trimmed")({
  image = "UiMapBgAtlas",
  uv = {
    0.8447,
    0,
    0.9214,
    0.1631
  }
})
resource("ImageRegion")("UiMapCloud_Tiny2")({
  image = "UiMapBgAtlas",
  uv = {
    0.8066,
    3.0E-4,
    0.8394,
    0.126
  }
})
resource("ImageRegion")("UiMapCloud_Tiny1")({
  image = "UiMapBgAtlas",
  uv = {
    0.7656,
    7.0E-4,
    0.8012,
    0.1245
  }
})
resource("ImageRegion")("UiMapCloud12")({
  image = "UiMapBgAtlas",
  uv = {
    0.686,
    0.1318,
    0.8407,
    0.2406
  }
})
resource("ImageRegion")("UiMapCloud_Tiny4")({
  image = "UiMapBgAtlas",
  uv = {
    0.5508,
    0.1172,
    0.6504,
    0.163
  }
})
resource("ImageRegion")("UiMap_Pattern_Star06")({
  image = "UiMapBgAtlas",
  uv = {
    0.6729,
    0.0938,
    0.7007,
    0.1216
  }
})
resource("ImageRegion")("UiMapJellyfish02")({
  image = "UiMapBgAtlas",
  uv = {
    0.7051,
    0.0693,
    0.7604,
    0.1247
  }
})
resource("ImageRegion")("UiMap_Pattern_Star04")({
  image = "UiMapBgAtlas",
  uv = {
    0.6782,
    0.0698,
    0.6963,
    0.0879
  }
})
resource("ImageRegion")("UiMapCloud_Tiny3")({
  image = "UiMapBgAtlas",
  uv = {
    0.5493,
    0.0684,
    0.6687,
    0.1134
  }
})
resource("ImageRegion")("UiMapCloud_Small5_Trimmed")({
  image = "UiMapBgAtlas",
  uv = {
    0.5498,
    0,
    0.761,
    0.0635
  }
})
resource("ImageRegion")("UiMapCloud09")({
  image = "UiMapBgAtlas",
  uv = {
    0.3062,
    0,
    0.5444,
    0.1699
  }
})
resource("ImageRegion")("UiMapCloud02")({
  image = "UiMapBgAtlas",
  uv = {
    0,
    0,
    0.3018,
    0.2192
  }
})
resourceref("Image")("UiTutorialFootprints")
resourceref("Image")("UiTutorialFogBackdrop")
resourceref("Image")("Icon_discord")
resourceref("Image")("Icon_facebook")
resourceref("Image")("Icon_instagram")
resourceref("Image")("Icon_tiktok")
resourceref("Image")("Icon_twitch")
resourceref("Image")("Icon_twitter")
resourceref("Image")("Icon_youtube")
resourceref("Image")("UiAccountLocal")
resourceref("Image")("UiAccountGameCenter")
resourceref("Image")("UiAccountGoogle")
resourceref("Image")("UiAccountGooglePlayGames")
resourceref("Image")("UiAccountApple")
resourceref("Image")("UiAccountNintendo")
resourceref("Image")("UiAccountHuawei")
resourceref("Image")("UiAccountSony")
resourceref("Image")("UiAccountGameCenterBadge")
resourceref("Image")("UiAccountLocalBadge")
resourceref("Image")("UiAccountGoogleBadge")
resourceref("Image")("UiAccountGooglePlayGamesBadge")
resourceref("Image")("UiAccountAppleBadge")
resourceref("Image")("UiAccountNintendoBadge")
resourceref("Image")("UiAccountFacebookBadge")
resourceref("Image")("UiAccountHuaweiBadge")
resourceref("Image")("UiAccountSonyBadge")
resourceref("Image")("UiAccountSteamBadge")
resourceref("Image")("UiAccountTwitchBadge")
resourceref("Image")("UiBrandPlayStationBadge")
resourceref("Image")("UiBrandPlayStationBadge_Small")
resourceref("Image")("UiBrandPlayStationBadgeColor")
resourceref("Image")("UiBrandAppleColor")
resourceref("Image")("UiShopFog")
resourceref("Image")("UiMiscBubbleA")
resourceref("Image")("UiMiscBubbleB")
resourceref("Image")("UiMiscRoundBox")
resourceref("Image")("UiMiscBoxButton")
resourceref("Image")("UiMiscBoxButtonGlow")
resourceref("Image")("UiMiscStarCluster")
resourceref("Image")("UiMiscOneSixth")
resourceref("Image")("UiMiscCircleFade")
resourceref("Image")("UiMiscStarFull")
resourceref("Image")("UiMiscSoftStar")
resourceref("Image")("UiMiscTempleDawn")
resourceref("Image")("UiMiscTempleDay")
resourceref("Image")("UiMiscTempleRain")
resourceref("Image")("UiMiscTempleSunset")
resourceref("Image")("UiMiscTempleDusk")
resourceref("Image")("UiMiscTempleNight")
resourceref("Image")("UiMiscTempleStorm")
resourceref("Image")("UiBuddyAsk")
resourceref("Image")("UiBuddyCancel")
resourceref("Image")("UiMaskEdit")
resourceref("Image")("UiOutfitPendant")
resourceref("Image")("UiOutfitPendantAP02")
resourceref("Image")("UiOutfitPendantAP03")
resourceref("Image")("UiOutfitPendantAP04")
resourceref("Image")("UiOutfitPendantAP05")
resourceref("Image")("UiOutfitPendantAP06")
resourceref("Image")("UiOutfitPendantAP07")
resourceref("Image")("UiOutfitPendantAP08")
resourceref("Image")("UiOutfitPendantAP09")
resourceref("Image")("UiOutfitPendantAP10")
resourceref("Image")("UiOutfitPendantAP11")
resourceref("Image")("UiOutfitPendantAP12")
resourceref("Image")("UiOutfitPendantAP13")
resourceref("Image")("UiOutfitPendantAP14")
resourceref("Image")("UiOutfitPendantAP15")
resourceref("Image")("UiOutfitPendantAP16")
resourceref("Image")("UiOutfitPendantAP17")
resourceref("Image")("UiOutfitPendantAP18")
resourceref("Image")("UiOutfitPendantAP19")
resourceref("Image")("UiOutfitPendantAP20")
resourceref("Image")("UiOutfitPendantAP21")
resourceref("Image")("UiOutfitPendantAP22")
resourceref("Image")("UiOutfitPendantAP23")
resourceref("Image")("UiOutfitPendantAP24")
resourceref("Image")("UiOutfitPendantAP25")
resourceref("Image")("UiOutfitPendantAP26")
resourceref("Image")("UiOutfitPendantAP27")
resourceref("Image")("UiOutfitPendantAP28")
resourceref("Image")("UiOutfitPendantAP29")
resourceref("Image")("DecalNoise")
resourceref("Image")("UiDyeingClothOffical_Decal")
resourceref("Image")("UiOutfitPendantAP30")
resourceref("Image")("UiOutfitPendantAP31")
resourceref("Image")("UiOutfitPendantAP32")
resourceref("Image")("UiSeasonMaskAP02")
resourceref("Image")("UiSeasonMaskAP03")
resourceref("Image")("UiSeasonMaskAP04")
resourceref("Image")("UiSeasonMaskAP05")
resourceref("Image")("UiSeasonMaskAP06")
resourceref("Image")("UiSeasonMaskAP07")
resourceref("Image")("UiSeasonMaskAP09")
resourceref("Image")("UiSeasonMaskAP10")
resourceref("Image")("UiSeasonMaskAP11")
resourceref("Image")("UiSeasonMaskAP12")
resourceref("Image")("UiSeasonMaskAP13")
resourceref("Image")("UiSeasonMaskAP14")
resourceref("Image")("GlitterSh")
resourceref("Image")("UIConstellationButtonGlow")
resourceref("Image")("UIStarGlow")
resourceref("Image")("UIBGGalaxy")
resourceref("Image")("UICircleTrailGlow")
resourceref("Image")("UiMiscInteractOutline")
resourceref("Image")("UiMenuCircleShadowHeavy")
resourceref("Image")("UiAnalogStickLit")
resourceref("Image")("UiButtonLeft")
resourceref("Image")("UiButtonTop")
resourceref("Image")("UiButtonBottom")
resourceref("Image")("UiButtonRight")
resourceref("Image")("UiLeftButton")
resourceref("Image")("UiLeftTrigger")
resourceref("Image")("UiRightButton")
resourceref("Image")("UiSeasonQuest")
resourceref("Image")("UISit")
resourceref("Image")("UIGift")
resourceref("Image")("UIHand")
resourceref("Image")("UIHint")
resourceref("Image")("UIChair")
resource("ImageAnim")("UiEmoteSitAnim")({
  prefix = "UiEmoteSit",
  frames = "0, 0, 1, 2, 2, 2, 2, 2, 2",
  frameTime = 0.16
})
resource("ImageAnim")("UiEmoteFlameAnim")({
  prefix = "UiEmoteFlame",
  frames = "0, 1, 2, 3, 4, 5, 3, 4, 5, 3, 4, 5, 3, 4, 5",
  frameTime = 0.13
})
resource("ImageAnim")("UiEmoteFlameSmallAnim")({
  prefix = "UiEmoteFlame",
  frames = "1, 2, 3, 2, 1, 2, 3, 2, 3, 2",
  frameTime = 0.13
})
resource("ImageAnim")("UiEmoteWaveAnim")({
  prefix = "UiEmoteWave",
  frames = "0, 1",
  frameTime = 0.35
})
resource("ImageAnim")("UiMenuPlaceCandleAnim")({
  prefix = "UiMenuPlaceCandle",
  frames = "2, 2, 2, 2, 0, 0, 1",
  frameTime = 0.16
})
resource("ImageAnim")("UiSocialReceiveHeartAnim")({
  prefix = "UiSocialReceiveHeart",
  frames = "0, 0, 1, 2, 2, 2, 2, 2, 2",
  frameTime = 0.16
})
resource("ImageAnim")("UiSocialOfferCandleAnim")({
  prefix = "UiSocialOfferCandle",
  frames = "0, 0, 1, 2, 2, 2, 2, 2, 2",
  frameTime = 0.16
})
resource("ImageAnim")("UIAcceptGiftAnim")({
  prefix = "UiSocialReceiveHeart",
  frames = "0, 0, 1, 2, 2, 2, 2, 2, 2",
  frameTime = 0.16
})
resource("ImageAnim")("UIOfferGiftAnim")({
  prefix = "UiSocialOfferCandle",
  frames = "0, 0, 1, 2, 2, 2, 2, 2, 2",
  frameTime = 0.16
})
resource("ImageAnim")("UiEmoteAP06NodAnim")({
  prefix = "UiEmoteAP06Nod",
  frames = "0, 2, 0, 1, 1",
  frameTime = 0.16
})
resource("ImageAnim")("UiEmoteAP09ShowDanceAnim")({
  prefix = "UiEmoteAP09ShowDance",
  frames = "0, 1, 2, 1",
  frameTime = 0.35
})
resource("ImageAnim")("UiEmoteAP11BeckonAnim")({
  prefix = "UiEmoteAP11Beckon",
  frames = "1, 0, 1, 0, 0",
  frameTime = 0.35
})
resource("ImageAnim")("UiEmoteAP13WaitAnim")({
  prefix = "UiEmoteAP13Wait",
  frames = "1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0",
  frameTime = 0.16
})
resource("ImageAnim")("UiEmoteAP13EvilLaughAnim")({
  prefix = "UiEmoteAP13EvilLaugh",
  frames = "1, 0, 1, 0, 1, 0, 0, 0",
  frameTime = 0.25
})
resource("ImageAnim")("UiEmoteAP14HeadBobAnim")({
  prefix = "UiEmoteAP14HeadBob",
  frames = "0, 1, 1, 2, 3, 3, 2, 1, 1",
  frameTime = 0.16
})
resource("ImageAnim")("UiMenuStageCurtainOpenAnim")({
  prefix = "UiMenuStageCurtain",
  frames = "0, 0, 1, 2, 2, 2, 2, 2, 2",
  frameTime = 0.16
})
resource("ImageAnim")("UiMenuStageCurtainCloseAnim")({
  prefix = "UiMenuStageCurtain",
  frames = "2, 2, 1, 0, 0, 0, 0, 0, 0",
  frameTime = 0.16
})
resource("ImageAnim")("UiOfferHealAnim")({
  prefix = "UiSocialOfferHeal",
  frames = "0, 1, 2, 3, 4, 5, 3, 4, 5, 3, 4, 5, 3, 4, 5",
  frameTime = 0.13
})
resource("ImageAnim")("UiHudStarSplitAnim")({
  prefix = "UiHudStarSplit",
  frames = "0, 1, 1, 2, 3, 4, 5, 6, 7",
  frameTime = 0.13
})
resource("ImageAnim")("UiHudShieldSplitAnim")({
  prefix = "UiHudShieldSplit",
  frames = "0, 1, 1, 2, 3, 4, 5, 6, 7",
  frameTime = 0.13
})
resource("ImageAnim")("UiEmoteAP16ArmWaveAnim")({
  prefix = "UiEmoteAP16ArmWave",
  frames = "0, 1, 2, 3, 4, 5",
  frameTime = 0.35
})
resource("ImageAnim")("UiEmoteAP16ConductAnim")({
  prefix = "UiEmoteAP16Conduct",
  frames = "0, 0, 0, 1, 2, 3, 3, 3, 2, 1",
  frameTime = 0.16
})
resource("ImageAnim")("UiEmoteAP16RhythmicClapAnim")({
  prefix = "UiEmoteAP16RhythmicClap",
  frames = "0, 1, 2, 2, 3, 4, 5, 5",
  frameTime = 0.16
})
resource("ImageAnim")("UiEmoteAP16RaiseTheRoofAnim")({
  prefix = "UiEmoteAP16RaiseTheRoof",
  frames = "0, 1",
  frameTime = 0.25
})
resource("ImageAnim")("UiEmoteAP16SilentClapAnim")({
  prefix = "UiEmoteAP16SilentClap",
  frames = "0, 1, 0, 1, 0, 2, 3, 4, 3, 4, 3, 5",
  frameTime = 0.16
})
resource("ImageAnim")("UiEmoteAuroraPenguinDanceAnim")({
  prefix = "UiEmoteAuroraPenguinDance",
  frames = "0, 1, 2, 3, 4, 5, 6, 7",
  frameTime = 0.25
})
resource("ImageAnim")("UiMenuSnakeGameAnim")({
  prefix = "UiMenuSnakeGame",
  frames = "2,1,0,2,2,2,2,1,0,1,2,2,1,0,1,2",
  frameTime = 0.2
})
resource("ImageAnim")("UiEmoteAP26CoughAnim")({
  prefix = "UiEmoteAP26Cough",
  frames = "0, 1, 0, 2, 2, 2",
  frameTime = 0.25
})
resource("ImageAnim")("UiMenuManateeSitAnim")({
  prefix = "UiMenuManateeSit",
  frames = "0, 0, 1, 2, 2, 2, 2, 2, 2",
  frameTime = 0.16
})
resource("ImageAnim")("UiEmoteAP29CuteClapAnim")({
  prefix = "UiEmoteAP29CuteClap",
  frames = "0, 1",
  frameTime = 0.16
})
resource("ImageAnim")("UiSocialOfferSunflowerAnim")({
  prefix = "UiSocialOfferSunflower",
  frames = "0, 0, 1, 2, 2, 2, 2, 2, 2",
  frameTime = 0.16
})
resourceref("Image")("UiMenuTabHighlightLR")
resourceref("Image")("UISeasonPassPreoderPromo")
resourceref("Image")("StickerBackground")
resourceref("Image")("UiNeteaseMuralStorybgLeft")
resourceref("Image")("UiNeteaseMuralStorybgRight")
resourceref("Image")("UiNeteaseMuralStorybgSlice")
resourceref("Image")("UiNeteaseAuroraCardBgExhaleinhale")
resourceref("Image")("UiNeteaseAuroraCardBgEyesofachild")
resourceref("Image")("UiNeteaseAuroraCardBgNormal")
resourceref("Image")("UiNeteaseAuroraCardBgQueendom")
resourceref("Image")("UiNeteaseAuroraCardBgRunaway")
resourceref("Image")("UiNeteaseAuroraCardBgSoftinside")
resourceref("Image")("UiNeteaseAuroraCardBgTheseed")
resourceref("Image")("UiNeteaseAuroraCardBgWarrior")
resourceref("Image")("FilterPhotoBackgroundPink")
resourceref("Image")("FilterPhotoBackgroundBlue")
resourceref("Image")("FilterPhotoBackgroundYellow")
resourceref("Image")("FilterPhotoBackgroundRed")
resourceref("Image")("FilterPhotoBackgroundViolet")
resourceref("Image")("FilterPhotoBackgroundPurple")
resourceref("Image")("FilterPhotoTextPurple1")
resourceref("Image")("FilterPhotoTextPurple2")
resourceref("Image")("FilterPhotoTextPurple3")
resourceref("Image")("FilterPhotoTextPurple4")
resourceref("Image")("FilterPhotoTextPurple5")
resourceref("Image")("FilterPhotoTextViolet1")
resourceref("Image")("FilterPhotoTextViolet2")
resourceref("Image")("FilterPhotoTextViolet3")
resourceref("Image")("FilterPhotoTextViolet4")
resourceref("Image")("FilterPhotoTextViolet5")
resourceref("Image")("FilterPhotoTextBlue1")
resourceref("Image")("FilterPhotoTextBlue2")
resourceref("Image")("FilterPhotoTextBlue3")
resourceref("Image")("FilterPhotoTextBlue4")
resourceref("Image")("FilterPhotoTextBlue5")
resourceref("Image")("FilterPhotoTextYellow1")
resourceref("Image")("FilterPhotoTextYellow2")
resourceref("Image")("FilterPhotoTextYellow3")
resourceref("Image")("FilterPhotoTextYellow4")
resourceref("Image")("FilterPhotoTextYellow5")
resourceref("Image")("FilterPhotoTextRed1")
resourceref("Image")("FilterPhotoTextRed2")
resourceref("Image")("FilterPhotoTextRed3")
resourceref("Image")("FilterPhotoTextRed4")
resourceref("Image")("FilterPhotoTextRed5")
resourceref("Image")("FilterPhotoTextPink1")
resourceref("Image")("FilterPhotoTextPink2")
resourceref("Image")("FilterPhotoTextPink3")
resourceref("Image")("FilterPhotoTextPink4")
resourceref("Image")("FilterPhotoTextPink5")
resourceref("Image")("UiStickerDashOutlineBig")
resourceref("Image")("SliderH")
resourceref("Image")("PatchAnim")
resourceref("Image")("PatchAnimBg")
resourceref("Image")("PatchBg")
resourceref("Image")("UiNeteaseQixiFeed")
resourceref("Image")("FireworkPhoto")
resourceref("Image")("FireworkMail")
resourceref("Image")("ReturnPlayerInviteCard")
resourceref("Image")("MailLoadingImg")
resourceref("Image")("QiXiDivination1")
resourceref("Image")("QiXiDivination2")
resourceref("Image")("QiXiDivination3")
resourceref("Image")("QiXiDivination4")
resourceref("Image")("QiXiDivinationLevel1")
resourceref("Image")("QiXiDivinationLevel2")
resourceref("Image")("QiXiDivinationLevel3")
resourceref("Image")("QiXiDivinationLevel4")
resourceref("Image")("QiXiDivinationLevel5")
resourceref("Image")("CharRampQixi")
resourceref("Image")("UiKizunaAiDumpling")
resourceref("Image")("NeteaseFortunePortal")
resourceref("Image")("UiPanoramicLensLogo")
resourceref("Image")("SnakeGameBackground")
resourceref("Image")("AppIconBackground")
resourceref("Image")("AppIconIndicator")
resourceref("Image")("WerewolfGameCardMagician")
resourceref("Image")("WerewolfGameCardKnight")
resourceref("Image")("WerewolfGameCardSeer")
resourceref("Image")("WerewolfGameCardWolfKing")
resourceref("Image")("WerewolfGameCardCivilian")
resourceref("Image")("WerewolfGameCardLonelyGirl")
resourceref("Image")("WerewolfGameCardWitch")
resourceref("Image")("WerewolfGameCardCupid")
resourceref("Image")("NeteaseNationalDayPhoto1")
resourceref("Image")("NeteaseNationalDayPhoto2")
resourceref("Image")("NeteaseNationalDayPhoto3")
resourceref("Image")("NeteaseNationalDayPhoto4")
resourceref("Image")("NeteaseNationalDayPhoto5")
resourceref("Image")("UiMenuStorageLocation")
resourceref("Image")("LoongRail")
resourceref("Image")("KizunaAiEmote")
resource("ImageAnim")("UIcloudMusicPlayAnim")({
  prefix = "UIcloudMusicPlay",
  frames = "0, 1, 2, 3, 4, 3, 4, 3, 4, 3, 4",
  frameTime = 0.13,
  loadLazy = true
})
resource("ImageAnim")("UICloudMusicRoamingAnim")({
  prefix = "UICloudMusicRoamingAnim",
  frames = "01, 02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31",
  frameTime = 0.13,
  loadLazy = true
})
resource("ImageAnim")("UICloudMusicCardRotateAnim")({
  prefix = "UICloudMusicCardRotate",
  frames = "0, 1, 2, 3, 2, 4",
  frameTime = 0.2,
  loadLazy = true
})
resourceref("Image")("UiMidAutumn2025Overlay1")
resourceref("Image")("UiMidAutumn2025Overlay2")
resourceref("Image")("UiMidAutumn2025Overlay3")
resourceref("Image")("UiMidAutumn2025Overlay4")
resourceref("Image")("UiMidAutumn2025Overlay5")
resourceref("Image")("UiMidAutumn2025Overlay6")
resourceref("Image")("UiMidAutumn2025Overlay7")
resourceref("Image")("UiMidAutumn2025Overlay8")
resourceref("Image")("UiMidAutumn2025Sticker02")
resourceref("Image")("UiMidAutumn2025Sticker03")
resourceref("Image")("UiMidAutumn2025Sticker05")
resourceref("Image")("UiMidAutumn2025Sticker06")
resourceref("Image")("UiMidAutumn2025Sticker07")
resourceref("Image")("UiMidAutumn2025Sticker08")
resourceref("Image")("UiMidAutumn2025Sticker11")
resourceref("Image")("UiMidAutumn2025Sticker12")
resourceref("Image")("UiMidAutumn2025Sticker14")
resourceref("Image")("UiMidAutumn2025Sticker15")
resourceref("Image")("UiMidAutumn2025Sticker20")
resourceref("Image")("UiMidAutumn2025Sticker21")
resourceref("Image")("UiMidAutumn2025Sticker22")
resourceref("Image")("UiMidAutumn2025Sticker24")
resourceref("Image")("UiMidAutumn2026Sticker01")
resourceref("Image")("VG_3_SLB")
resourceref("Image")("VG_3_SRT")
resourceref("Image")("UiSanrioBgB")
resourceref("Image")("UiSanrioBgG")
resourceref("Image")("UiSanrioBgR")
resourceref("Image")("UiSanrioBgY")
resourceref("Image")("UiSanrioFrame1")
resourceref("Image")("UiSanrioFrame2")
resourceref("Image")("UiSanrioFrame3")
resourceref("Image")("UiSanrioFrame4")
