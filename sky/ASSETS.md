# 光·遇（Sky: Children of the Light）素材资产清单

版本：`0.16.7-421589-android`（`com.netease.sky`，versionCode 421589）
提取源：`/workspace/sky/apk/`（APK 解包产物，2.8 GB）
输出根目录：`/workspace/sky/assets/`

本文件说明每个素材类别的**来源、处理工具、输出格式、覆盖率与已知限制**，可直接作为复刻项目的素材导入说明。

---

## 1. 总览

| 类别 | 输出目录 | 文件数 | 体积 | 格式 | 覆盖率 |
|---|---|---|---|---|---|
| 纹理 | `assets/textures/` | 873 | 135 MB | PNG（由 KTX/ETC2 转码） | 全部可解纹理 |
| 模型网格 | `assets/meshes/` | 6404 | 655 MB | OBJ（含点云变体） | 7200 个 mesh 中 6404 成功 |
| 关卡 | `assets/levels/` | 111 | 743 MB | GLB + markers JSON | 118 个关卡目录，7 个失败 |
| 音频 | `assets/audio/` | 9683 | 584 MB | OGG Vorbis | 143 个 bank 全部处理完毕 |
| 动画 | `assets/animations/` | 163 | 297 MB | JSON（骨骼+轨道） | 163 个 animpack（全部完成） |
| 着色器 | `assets/shaders/` | 4500 | 45 MB | Vulkan GLSL | 全部 SPIR-V |
| 字体 | `assets/fonts/` | 16 | 121 MB | `.slug` / `.fnt` | 全部 |
| 体积纹理 | `assets/volumetric/` | 3 | 2.3 MB | `.vol` | 全部 |
| 数值/配置 | `assets/data/` | 56+ | 9.1 MB | JSON / Lua 字节码 / zst | 全部 Resources |

> 音频、关卡、动画三项在后台批处理中，最终数量以 `reports/` 下日志与清单为准。

---

## 2. 目录结构

```
/workspace/sky/
├── apk/                     # APK 原始解包（含完整 assets/Data，只读参考）
│   ├── assets/Data/
│   │   ├── Audio/Bin/                # FMOD bank（143 个）
│   │   ├── Fonts/Bin/                # .slug / .fnt
│   │   ├── Images/Bin/               # KTX / ETC2
│   │   ├── Levels/<LevelName>/       # Objects.level.bin、BstBaked.meshes…
│   │   ├── Meshes/Bin/               # .mesh / .animpack
│   │   ├── Resources/                # 56 个 Defs JSON + BehaviorTrees
│   │   ├── Scripts/                  # .luac（另已反编译到 lua/）
│   │   ├── Shaders/Bin/              # .spv
│   │   └── Tex3D/                    # .vol
│   └── lib/arm64-v8a/libBootloader.so
├── assets/                  # 可直接使用的素材（见上表）
├── lua/                     # 146 个反编译 Lua 源文件（7.0 MB）
├── reports/                 # 全量日志与清单
├── tools/                   # 可复现的提取脚本
├── CORE_LOGIC.md            # 核心玩法逻辑
├── SOURCE_MODULES.md        # 核心源码模块
└── ASSETS.md                # 本文件
```

---

## 3. 各类素材详解

### 3.1 纹理 `assets/textures/`

- 源路径：`apk/assets/Data/Images/Bin/`（组织为 `ETC2/` 等子目录）。
- 格式：Android 专用 KTX 容器，内部为 ETC2/EAC 压缩纹理（含 mipmap）。
- 处理：解析 KTX 头 → 解 ETC2 块 → 重编码为 PNG（保留 alpha；法线/遮罩类按线性空间导出）。
- 产出：873 个 PNG，135 MB；目录结构沿用源分类。
- 用途：角色服装、场景贴图、UI 图集、粒子/特效贴图。
- 限制：部分 KTX 为 cubemap/array/压缩格式变体，未展开为多文件；BC/ETC1 混用者已跳过。

### 3.2 模型网格 `assets/meshes/`

- 源路径：`apk/assets/Data/Meshes/Bin/*.mesh`（7200 个）。
- 格式（社区未公开，本项目实测逆向）：
  - 头部为 `u32 名称长度 + 名称`（区别于 PC 版的 version-first 变体）。
  - `0x44` = LOD 数；`0x48` = 变体标志位；`0x56` = 解压后大小；`0x5a` 起为压缩数据（通常 LZ4）。
- 变体分布与处理：

  | flags | 数量 | 含义（对应 MeshDefs 管线标志） | 导出结果 |
  |---|---|---|---|
  | `0x0` | 5648 | 基础网格 | 完整 OBJ（顶点/法线/UV/三角面） |
  | `0x1` | 1474 | StripAnim（角色/服装/发型/面具/翅膀/NPC） | `0x1f0` 起 ZipPos 量化坐标 → 点云 OBJ |
  | `0x100` | 64 | NightShelf / 压缩变体 | 完整 OBJ |
  | `0x50001` | 11 | ZipPos+StripAnim 组合 | 跳过 |
  | `0x60001` | 3 | ZipUvs+ZipPos+StripAnim | 跳过 |

- 产出：`ok=5626`（带面）+ `points=778`（点云）+ `skip=14` = 6404 个 OBJ，655 MB。
- 日志：`reports/meshes.log`（逐文件 PASS/FAIL 与原因）。
- 失败 782 个主要两类：`bad shared`（共享索引表位置随变体漂移）、`ZipPos overrun`（量化坐标解包越界）。典型文件：`AP06CutsceneAnim01a`、`AP14HangingRope_01`、`AP32_Oldman_Boat_Nail`。
- 限制：flags=1 的 ZipPos 变体尚未恢复**索引/法线/UV**，仅点云；建议复刻时以基础网格（flags=0）为准，角色类另接。

### 3.3 关卡 `assets/levels/`

- 源路径：`apk/assets/Data/Levels/<LevelName>/`，核心文件：
  - `Objects.level.bin`：magic `TGCL`，u32 version=1，后接各 section 的偏移/数量/文件长度。
  - `BstBaked.meshes`：分块 `LVL0` / `GEO0` / `LOD0` / `METR`，顶点缓冲为 meshopt 压缩。
- 处理：`Sky-map-to-model.py`（社区工具，本项目批处理模式 2）→ GLB + 标记点 JSON。
- 产出：118 个关卡目录中 **111 个成功**（每个含 `BstBaked.glb` + `BstBaked_markers.json`，共 743 MB）；7 个失败（meshopt 头 `0x1C` 或“压缩块大小异常”）。
- 标记 JSON Schema：

  ```json
  [
    { "type": "CandleObject", "label": "烛火",
      "position": [x, y, z], "color": "#ff9a3c" },
    { "type": "Npc", "label": "先祖", "position": [...], "color": "#..." }
  ]
  ```

  已覆盖 **24,954 个逻辑对象、17 种类型**：`CandleObject`(5712)、`SoundEmitter`(5392)、`PointLight`(2875)、`StarFragment`(2629)、`Npc`(2610)、`Flame`(2607)、`LevelLink`(1123)、`DisplayText`(442)、`Pickup`(377)、`MeditationArea`(278)、`Collectible`(273)、`StreamingCrystal`(151)、`PickupEmitter`(143)、`WingBuff`(121)、`ConstellationGate`(82)、`Portal`(70)、`MapShrine`(69)。
- 关卡名覆盖：`Dawn*`、`Dusk*`、`AR_*`、`AF_S27*`、`AP*` 等 118 个目录（含子场景/试用/节日关卡）。
- 限制：部分 `BstBaked.meshes` 的 meshopt 头不匹配（`0x1C`）或压缩块异常，转换失败但批处理继续；缺失的关卡可用原 `apk/` 数据 + 社区工具单独重跑。

### 3.4 音频 `assets/audio/`

- 源路径：`apk/assets/Data/Audio/Bin/`，143 个 FMOD bank。
- 容器结构：RIFF `FEV ` → `SND ` 块（4cc + u32 长度 + 4×u32 保留）→ **FSB5**（version=1，codec mode 16 = Vorbis）。
- 关键发现：仅 `.assets.bank` / `.streams.bank` 内含 FSB5；`.bank` 主 bank 仅为元数据（如 `MasterBank.streams.bank` 仅 494 字节）。
- 处理链：扫描并雕取 FSB5 → `vgmstream-cli -S 0` 解出全部 subsong 为 WAV → `ffmpeg -c:a libvorbis -q:a 4` 转 OGG。
- 产出：**9683 个 OGG，584 MB**，与扫描到的 FSB5 子曲目总数一致（100% 导出）。
- 清单：`reports/audio_manifest.csv`，9683 行，字段 `bank,part,name,duration_s,size_bytes`，可据此筛选 BGM/环境音/角色音效。
- 分组提示：`Common*`、`SFX_Common*` 为通用音效；`Music_*` 为区域 BGM；`Voice_*` 为对白/吟唱；`Amb_*` 为环境声。
- 覆盖率：143 个 bank 全部扫描；无 FSB5 的纯元数据 bank（如 `MasterBank`、各类 `.bank` 主包）无音频可导。
- 断点续跑：脚本按 bank/part 写 `.done_pN` 标记，重跑自动跳过已完成 OGG。

### 3.5 动画 `assets/animations/`

- 源路径：`apk/assets/Data/Meshes/Bin/*.animpack`（163 个）。
- 格式：版本 11；64 字节骨骼名；LZ4 压缩块；clip 轨道（旋转四元数/位移/缩放/时间）。
- 处理：`sky-animpack-tool decompile` → JSON。
- 产出：**163 个 JSON，297 MB**（100% 完成），含骨骼层级、clip 名称、关键帧轨道；单文件 0.5–10 MB。
- 命名：`Char*`（角色）、`NPC*`、`Col*`（收集品/道具）、`Spirit*`（先祖动作）、`Cutscene*`（过场）。
- 限制：工具面向 PC 版校验，部分 APK 文件会告警但通常仍能解出；`reports/animpack.log` 无 FAIL 记录。

### 3.6 着色器 `assets/shaders/`

- 源路径：`apk/assets/Data/Shaders/Bin/*.spv`（4500 个，Vulkan SPIR-V）。
- 处理：`spirv-cross --vulkan-semantics` → Vulkan GLSL。
- 产出：4500 个 `.glsl`，45 MB；日志 `reports/shaders.log`（0 失败）。
- 用途：还原角色/服装、地形、天空、云、粒子、UI 的渲染管线；可作为 Unity/UE/自研引擎的移植参考。
- 限制：仅反编译为 GLSL，未还原 uniform 绑定与渲染状态（需配合 `assets/data` 中的材质/管线定义）。

### 3.7 字体 `assets/fonts/`

- 源路径：`apk/assets/Data/Fonts/Bin/`。
- 格式：16 个自定义 SDF 字体（`.slug`）+ BMFont 描述（`.fnt`）。
- 产出：121 MB，原样复制。
- 限制：`.slug` 为 TGC 私有 SDF 格式，需自行实现渲染器；`.fnt` 可直接被 BMFont 类库解析。

### 3.8 体积纹理 `assets/volumetric/`

- 源路径：`apk/assets/Data/Tex3D/`。
- 文件：`CloudFluffy.vol`、`CloudNoise.vol`、`PerlinNoise.vol`（2.3 MB）。
- 用途：云层体积渲染、噪声扰动；为 3D 纹理（volume texture），需按 `.vol` 头解析后上传 GPU。

### 3.9 数值/配置 `assets/data/`

- 源路径：`apk/assets/Data/Resources/`（9.1 MB）。
- 内容：56 个顶层 JSON + `BehaviorTrees/`（22 个行为树 JSON）。
- 关键表：
  - `OutfitDefs.json`：1649 条外观定义（prop 529、body 252、wing 219、hair 206、mask 131、hat 105、neck 88、horn 43、face 38、feet 38）。
  - `NpcDefs.json`：622 条 NPC/先祖（spirit 493、ghost 2、capeLevel 0–5、MBTI 性格）。
  - `MapDefs.json`：19 张地图元数据。
  - `WorldQuestDefs.json`：368 条世界任务。
  - `Constellations.json`：449 条星座节点。
  - `CollectibleDefs.json`：248 条收集品（emote 125、quest_giver 50、generic_npc 29…）。
  - `SeasonTemplate.json`：92 个键值（`current_min_season=2`、`max=32`）。
  - `QuestConfig.json`：27 条；`QuestGroups.json`：2 个。
- 其他仍留在 `apk/assets/Data/`：`BlobPrefabs/`（760 KB 预制件）、`LGD/`（2.1 MB 关卡几何描述）、`Manifests/`（资源清单）。

---

## 4. 复现命令

```bash
# 纹理
python3 /workspace/sky/tools/convert_textures.py

# 网格
python3 /workspace/sky/tools/export_meshes.py

# 着色器
python3 /workspace/sky/tools/convert_shaders.py

# 音频（可断点续跑）
python3 /workspace/sky/tools/extract_audio.py

# 关卡（交互式批处理，模式 2）
printf '2\n<Levels目录>\n<Meshes/Bin目录>\n<输出目录>\nglb\nmaterial\ny\n' \
  | python3 /tmp/Sky-map-to-model/Sky-map-to-model.py

# 动画
python3 /tmp/sky-animpack-tool/animpack_tool.py d <file.animpack> <out.json>
```

---

## 5. 已知限制与授权说明

1. **未恢复的部分**：flags=1 网格的索引/法线/UV；部分 meshopt 关卡；`.slug` 字体渲染语义；SPIR-V 的 uniform/管线状态。
2. **服务端内容**：版本含约 1.7 GB 热更内容，部分季节/活动资源不在本次 APK 内。
3. **命名与本地化**：APK 内无 `.strings`/`.lproj` 文本表，UI 文案多由服务端下发或内嵌在 Lua/配置中。
4. **授权**：以上素材版权归 thatgamecompany / 网易所有，仅可用于个人学习与研究；公开发布复刻作品需自行替换全部美术/音频/文本资源。
