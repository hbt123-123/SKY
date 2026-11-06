# Sky 主要源码模块（核心）与反编译方法

> 本文件回答两个问题：**引擎/逻辑由哪些模块组成**，以及**这些模块是如何从安装包中还原出来的**。
> 代码级产物位置：`/workspace/sky/lua/`（Lua）、`/workspace/sky/apk/lib/arm64-v8a/libBootloader.so`（原生）、`/workspace/sky/apk/assets/Data/Resources/*.json`（数据）。

---

## 1. 安装包分层

| 层 | 文件/目录 | 说明 |
|---|---|---|
| Android 壳 | `classes*.dex` | 仅 UniSDK 协议/登录/支付胶水，无玩法逻辑 |
| 原生引擎 | `lib/arm64-v8a/libBootloader.so`（67,475,200 B） | Ancestor Engine：渲染、物理、音频、网络、Lua VM、场景管理 |
| 平台库 | `libSDL2.so`、`libvulkan.so`、`libccffmpeg.so` 等 | 输入/图形/视频解码 |
| 脚本 | `assets/Data/Resources/*.luac`、`Levels/*/Resources.lua.luac` | Lua 5.2 定制字节码（见 §3） |
| 设计数据 | `assets/Data/Resources/*.json` | 装扮/NPC/任务/星座/地图/行为树 |
| 素材 | `Images/`、`Meshes/`、`Shaders/`、`Audio/`、`Fonts/` | KTX、.mesh、SPIR-V、FMOD bank、slug 字体 |

`libBootloader.so` 为 ELF64 AArch64，strip 后仍保留 **1063 个动态导出符号**与 **29 个 section**；引擎的功能边界可以从其中 170+ 个 `*Barn` 标识符与 34 个 Lua `Vars` 子系统完整还原。

---

## 2. 原生模块地图（Ancestor Engine）

TGC 把子系统命名为 `XxxBarn`（谷仓，即“模块容器”）。下表按职责归并（去重后约 170 个核心 Barn；原始清单见 `/tmp/barns.txt`）。

### 2.1 引擎/资源/基础

`AncestorEngineBarn`、`MetaSystem`、`DumpMetaSystem`、`ResourceBundleBarn`、`ResourceSyncBarn`、`RemoteResourceBarn`、`RemoteTextureBarn`、`OrbitDownloaderBarn`、`VfsMountPatchSystem`、`JobBarn`、`IdPoolBarn`、`ValueBarn`、`MetricsBarn`、`ABTestingBarn`、`TextTranslatorBarn`、`FilePickerBarn`、`SupportSystem`

> 对应逻辑：VFS 挂载、资源包、热更（LGD/NXPK）、异步任务、ID 池、指标与 AB 实验、本地化。

### 2.2 角色与外观

`AvatarBarn`、`HeadMeshBarn`、`OutfitSelectBarn`、`SkirtBarn`、`FurBarn`、`TailBarn`、`HairBarn`(表现层)、`DyeingClothBarn`、`WingBuffBarn`、`RadianceBarn`、`TrailBarn`、`WakeTrailBarn`、`BrushstrokeBarn`、`HeadMeshBarn`、`HuskEffectBarn`

> 对应逻辑：装扮槽位、裙摆/毛皮/尾巴物理、染色、光翼与拖尾、头部网格替换。

### 2.3 场景与关卡

`LevelDataBarn`、`LevelStateBarn`、`LevelLinkBarn`、`StreamLevelLinkBarn`、`LevelURLBarn`、`LevelAllocatedDataBarn`、`LevelInstanceModelBarn`、`LevelMeshBarn`、`LevelModelBarn`、`TerrainBarn`、`TerrainBlobBarn`、`CollisionGeoBarn`、`PrefabBarn`、`PlaceableBarn`、`MarkerBarn`、`WaypointBarn`、`BT_WaypointBarn`、`CheckpointBarn`、`PortalBarn`、`ConstellationGateBarn`、`MeditationBarn`、`TraversalDataBarn`、`OcclusionSphereBarn`

> 对应逻辑：关卡加载/卸载、流式拼接、地形与碰撞、预制件、摆位标记、传送门与冥想点。

### 2.4 渲染

`BeamoBarn`、`BlazeBarn`、`CloudBarn`、`CloudCardBarn`、`CloudParticleBarn`、`DecalBarn`、`EmitterBarn`、`FlameBarn`、`ParticleBarn`、`PointLightBarn`、`LensFlareBarn`、`MaterialDefBarn`、`ModelBarn`、`ImposterBarn`、`MarkupRenderBarn`、`VideoTextureBarn`、`OceanFoamLineBarn`、`RainBarn`、`Compositor`(Vars)、`Scene`(Vars)、`CameraSystem`、`CameraGuideBarn`、`ARCameraBarn`

> 对应逻辑：体积光/泛光、云与粒子、贴花、材质、模型/LOD、视频纹理、海面泡沫、雨、后处理、相机引导。

### 2.5 玩法对象与收集

`CandleBarn`、`WaxChunkBarn`、`FlameBarn`、`EmberBarn`、`StarFragmentBarn`、`CollectibleBarn`、`WingBuffBarn`、`ConsumableBarn`、`ItemBarn`、`RewardsBarn`、`EventCurrencyBarn`、`AchievementBarn`、`PickupBarn`、`PickUpAbleBarn`、`PickupEmitterBarn`、`PickupNodeBarn`、`DarkstoneBarn`、`DarkstoneRainBarn`、`MicrodarknessBarn`、`LightseekerBarn`、`FlowerBarn`、`LightPlantsBarn`、`MoteBarn`、`PharosBarn`

> 对应逻辑：烛火/蜡堆/火焰、星之碎片、光翼、消耗品与奖励、活动货币、拾取、黑暗植物与光之翼收集。

### 2.6 任务 / 星座 / 季节 / 引导

`QuestBarn`、`SkyQuestBarn`、`QuestSignalBarn`、`QuestStateBarn`、`ScheduledEventBarn`、`EventBarn`、`TutorialBarn`、`GuideBarn`、`HintBarn`、`DialogHintBarn`、`DebugDialogHintBarn`、`ConstellationGateBarn`

> 对应逻辑：任务状态机、任务信号、活动调度、新手引导、星座门。

### 2.7 NPC / 生物 / AI

`NpcBarn`、`BehaviorTreeBarn`、`BehaviorAnimationBarn`、`SpiritBarn`、`CritterV2Barn`、`BirdV2Barn`、`CrabBarn`、`FishBarn`、`JellyfishBarn`、`DarkCreatureBarn`、`LurkerBarn`、`GroundCritterBarn`、`ClumpBarn`、`StormEventSpawnerBarn`、`DarkstoneRainBarn`

> 对应逻辑：NPC 行为树、行为动画、先祖（Spirit）、小生物、螃蟹/鱼/水母、暗物、风暴事件生成。

### 2.8 社交 / 小游戏 / UGC

`FriendBarn`、`FriendDataBarn`、`BuddyBarn`、`BuddyRequestBarn`、`TrustBarn`、`TrustCompanionBarn`、`TrustGainIndicatorBarn`、`TrustMomentBarn`、`AffinityBarn`、`SocialSafetyBarn`、`SharedSpaceBarn`、`SharedSpaceShrineBarn`、`SharedSpaceSpellBarn`、`MessageBoatBarn`、`MessageStoneBarn`、`MessageTurtleBarn`、`MessageCloudMusicBarn`、`SocialLanternBarn`、`SocialStickerBarn`、`SocialRecorderBarn`、`SocialCoupleWishCardBarn`、`SocialDivinationBarn`、`SocialFeedCommentBarn`、`SocialFeedV2QueueBarn`、`SocialMeditationShrineBarn`、`SocialShrineBarn`、`VotingBarn`、`HideAndSeekBarn`、`WerewolfGameBarn`、`ShellGameBarn`、`SnakeGameBarn`、`PlushieTossGameBarn`、`ConcentrationGameBarn`、`CompetitionBarn`、`LineUpBarn`、`DanceFloorBarn`、`FireworkBarn`

> 对应逻辑：好友/牵手/信任/亲密度、共享空间与家具、留言船/石/龟、乐器与点歌、社交贴纸、小游戏集合。

### 2.9 音频 / 音乐

`FmodStudioSoundSystem`、`SoundSystem`、`SoundEmitterBarn`、`MusicBarn`、`MusicSequencerBarn`、`SheetMusicBarn`、`MusicRecordingShrineBarn`、`RecordingCandleBarn`、`RecordingPenPalBarn`、`RecordingShrineBarn`、`Reverb`(Vars)

> 对应逻辑：FMOD 事件、音效点、音乐序列器/乐谱、录音类 shrine、混响参数。

### 2.10 网络 / 状态同步

`NetPlayerBarn`、`NetVarBarn`、`NetFlagBarn`、`GlobalMessageBarn`、`LeaderboardBarn`、`AudienceBarn`、`VastAudienceBarn`、`ReplayBarn`、`GameCaptureBarn`、`SoftBanBarn`

> 对应逻辑：玩家同步、网络变量/标记、全服广播、排行榜、观众系统（演出场景）、回放/录制。

### 2.11 UI / 文本 / 交互

`UiSystem`、`TguiBarn`、`MenuBarn`、`BubbleMenuBarn`、`DynamicMenuBarn`、`BeaconBarn`、`UiContextButtonBarn`、`VisionWidgetBarn`、`DisplayPreferencesBarn`、`PhotographyBarn`、`ScreenshotEditorBarn`、`TVBarn`、`BeamoBarn`

> 对应逻辑：HUD/菜单/气泡轮盘、上下文按钮、视觉组件、拍照与截图编辑器。

---

## 3. Sky 的 Lua 5.2 定制字节码（已完全破解）

### 3.1 与官方 Lua 5.2 的 5 处差异

1. 12 字节标准头后追加 6 字节 `19 93 0D 0A 1A 0A`（5.3 风格 LUAC_DATA）。
2. 字符串长度为 **4 字节 int**（官方 8 字节 `size_t`），且长度包含结尾 NUL、NUL 被写出。
3. 函数头**无 source 字段**：`linedef/ lastlinedef/ numparams/ is_vararg/ maxstack`；source 在 debug 段。
4. 段顺序：`code → constants(0/1/3/4) → protos → upvalues(2B) → debug(source, lineinfo, locvars, upvalnames)`。
5. **指令编号被 TGC 重排**（关键）。

### 3.2 opcode 重排表（实证恢复）

官方 5.2 的 `luaP_opmodes` 表在 `libBootloader.so` 文件偏移 `0x6ac6e9`；其 40 字节是官方表的置换：**官方 13–18 号指令块被移到最前**。据此得到：

| op | 名称 | op | 名称 | op | 名称 |
|---|---|---|---|---|---|
| 0 | ADD | 14 | SETTABUP | 28 | TESTSET |
| 1 | SUB | 15 | SETUPVAL | 29 | CALL |
| 2 | MUL | 16 | SETTABLE | 30 | TAILCALL |
| 3 | DIV | 17 | NEWTABLE | 31 | RETURN |
| 4 | MOD | 18 | SELF | 32 | FORLOOP |
| 5 | POW | 19 | UNM | 33 | FORPREP |
| 6 | MOVE | 20 | NOT | 34 | TFORCALL |
| 7 | LOADK | 21 | LEN | 35 | TFORLOOP |
| 8 | LOADKX | 22 | CONCAT | 36 | SETLIST |
| 9 | LOADBOOL | 23 | JMP | 37 | CLOSURE |
| 10 | LOADNIL | 24 | EQ | 38 | VARARG |
| 11 | GETUPVAL | 25 | LT | 39 | EXTRAARG |
| 12 | GETTABUP | 26 | LE | | |
| 13 | GETTABLE | 27 | TEST | | |

校验样本：`Resources/Script/Account.lua.luac` 反编译为
`function SupportRecoverAccount(uuid) game:accountBarn():SupportRecoverAccount(uuid) end`，语义通顺。

### 3.3 反编译流水线

- 已修补 unluac 1.2.3.569：`--sky`（4 字节字符串）+ `--opmap`/`--typemap`。
- 补丁源码：[unluac-sky-patch](file:///workspace/findings/unluac-sky-patch)
- opcode 映射：[sky_opmap.txt](file:///workspace/findings/unluac-sky-patch/sky_opmap.txt)
- 运行命令（补丁类需先编译到 `/tmp/patchclasses`）：

```bash
java -cp /tmp/patchclasses:/tmp/unluac-classes unluac.Main \
     --sky --opmap /workspace/findings/unluac-sky-patch/sky_opmap.txt \
     <file.luac> > <file.lua>
```

- 结果：**146/147 成功**，共 255,613 行、7.0 MB；唯一失败 `Resources/ContentPackages/APLeaking.lua.luac`（输出为空）。
- 完整目录：[lua_catalog.md](file:///workspace/sky/reports/lua_catalog.md)

### 3.4 Lua 目录结构（146 个模块）

| 目录 | 数量 | 作用 |
|---|---|---|
| `Scripts/` | 10 | 启动、关卡选择/加载、账号、持久化状态 |
| `Resources/` | 51 | 资源清单（MeshDefs/ImageDefs/UIPackedAtlas/SoundDefs 等） |
| `Levels/*/Resources.lua` | 84 | 各关卡资源引用 |
| `Vars/` | 1 | 34 个引擎子系统的调参/调试开关 |

重点导读：
- `Resources/Boot.lua`：环境变量、`level()` 工厂、启动资源表；
- `Resources/Persistent.lua`：378 条资源声明，全局资源索引的真源；
- `Scripts/LevelSelect.lua` / `Scripts/LoadLevel.lua`：关卡注册与按需加载；
- `Vars/Vars.lua`：34 个引擎子系统的参数（移动/飞行/相机/任务/音频/UI），是理解手感与规则的最佳入口。

---

## 4. 数据模块（玩法规则的真正载体）

| 模块 | 文件 | 规模 |
|---|---|---|
| 外观/装扮 | `Resources/OutfitDefs.json` | 1649 |
| NPC | `Resources/NpcDefs.json` | 622 |
| 地图/领域 | `Resources/MapDefs.json` | 19 |
| 世界任务 | `Resources/WorldQuestDefs.json` | 368 |
| 星座 | `Resources/Constellations.json` | 449 |
| 收集品/表情 | `Resources/CollectibleDefs.json` | 248 |
| 行为树 | `Resources/BehaviorTrees/*.json` | 22 棵，节点类型 60+ |
| 季节 | `Resources/SeasonTemplate.json` | 92 键值 |
| 任务配置 | `QuestConfig/ QuestGroups/ DailyQuestDefs` | 27 / 2 / — |

完整清单：[data_catalog.md](file:///workspace/sky/reports/data_catalog.md)（56 个 JSON，含根类型与大小）。

---

## 5. 复现构建步骤（从原始 APK 到本目录产物）

```bash
# 1) 解包
unzip -q Sky-0.16.7-421589-android.apk -d /workspace/sky/apk

# 2) 反编译 Lua（需先编译 unluac 补丁类）
java -cp /tmp/patchclasses:/tmp/unluac-classes unluac.Main \
     --sky --opmap /workspace/findings/unluac-sky-patch/sky_opmap.txt \
     <file.luac> > <file.lua>

# 3) 纹理 KTX → PNG
python3 /workspace/sky/tools/ktx2png.py

# 4) 网格 .mesh → OBJ
python3 /workspace/sky/tools/export_meshes.py

# 5) 音频 bank → FSB5 → OGG
python3 /workspace/sky/tools/extract_audio.py

# 6) 着色器 SPIR-V → GLSL
python3 /workspace/sky/tools/convert_shaders.py

# 7) 关卡 → GLB + markers.json（社区工具）
python3 /tmp/Sky-map-to-model/Sky-map-to-model.py   # 批量模式
```

---

## 6. 模块级结论

1. **核心玩法模块全部原生**：移动/飞行（Step/Flight）、角色外观（Avatar/Skirt/Fur）、场景（Level/Terrain）、任务（Quest/SkyQuest）、NPC（BehaviorTree）都是 C++ `*Barn`。
2. **Lua 不是玩法主体**：它是资源与关卡的胶水层，外加可热更的调参/调试入口。
3. **数据表是内容真源**：装扮 1649、NPC 622、任务 368、星座 449、行为树 22——复刻时应优先复刻这些 schema，而不是逆指令。
4. **渲染与音频是标准管线**：Vulkan + SPIR-V + KTX/ETC2；FMOD Studio + FSB5/Vorbis。

---

## 7. REA 分析证据

REA 6.8.0 的 JADX 与 Ghidra provider 参与了安装包与原生库的取证，产物保存在 `reports/`：

| 文件 | 内容 | Evidence ID |
|---|---|---|
| `rea_android_package.md` | 清单：`com.netease.sky`、0.16.7、421589、minSdk 26 / target 30、35 项权限、130 个类、21819 个资源 | `ev_ef645191…` |
| `rea_android_classes.json` | 130 个 Java 类清单（全部 `IOoOo00o0II.*` 混淆壳） | `ev_c3d41b54…` |
| `rea_native_exports.md` | `libBootloader.so` 的 ELF 身份与导出符号表 | `ev_6021e34a…` |

复跑环境变量：

```bash
export GHIDRA_INSTALL_DIR=/opt/ghidra_12.1.4_PUBLIC
export REA_JADX_MCP_JAR=/root/.local/share/rea/android/jadx-headless-mcp-0.7.1-all.jar
rea inspect-android-package /workspace/Sky-0.16.7-421589-android.apk --format md
rea search-android-classes /workspace/Sky-0.16.7-421589-android.apk "" --format json
rea inspect-native-exports /workspace/sky/apk/lib/arm64-v8a/libBootloader.so --format md
```

> Java 层仅 130 个混淆类（UniSDK 登录/支付/协议），不承载玩法；Ghidra 用于定位 `luaP_opmodes` 并恢复定制 opcode。真正的源码级产物是 `lua/` 与 `assets/data/`。
