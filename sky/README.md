# Sky（光·遇）逆向复刻资料包

样本：网易国服 `Sky-0.16.7-421589-android.apk`（`com.netease.sky`，version 0.16.7 / versionCode 421589，2.06 GB）
SHA-256：`db9c786629159a845252b995be558f931c82880726ccd030c4f0fa0a7b62a58d`

本资料包由 **REA（Reverse Engineer Anything 6.8.0 + Ghidra 12.1.4 + JADX headless 0.7.1）** 驱动完成，目标是支撑一个“可玩的类光·遇”复刻项目，输出三类产物：

| 产物 | 文档 | 代码/数据位置 |
|---|---|---|
| **核心逻辑** | [CORE_LOGIC.md](CORE_LOGIC.md) | `lua/`、`assets/data/` |
| **主要源码模块（核心）** | [SOURCE_MODULES.md](SOURCE_MODULES.md) | `lua/`（146 个反编译模块）、`apk/lib/arm64-v8a/libBootloader.so` |
| **游戏素材** | [ASSETS.md](ASSETS.md) | `assets/`（纹理/网格/音频/关卡/动画/着色器/字体） |

---

## 1. 目录导航

```
/workspace/sky/
├── README.md                # 本文件：总入口
├── CORE_LOGIC.md            # 核心玩法逻辑（9 大子系统 + 数值循环 + 复刻建议）
├── SOURCE_MODULES.md        # 原生 Barn 模块地图 + Lua 字节码格式 + opcode 表
├── ASSETS.md                # 素材清单、格式、覆盖率、限制
├── assets/                  # 已处理素材
│   ├── textures/            # 873 PNG
│   ├── meshes/              # 6404 OBJ
│   ├── levels/              # 关卡 GLB + markers JSON
│   ├── audio/               # OGG + manifest
│   ├── animations/          # 163 个 animpack JSON
│   ├── shaders/             # 4500 GLSL
│   ├── fonts/               # .slug / .fnt
│   ├── volumetric/          # .vol 3D 纹理
│   └── data/                # 56 个 Defs JSON + BehaviorTrees
├── lua/                     # 146 个反编译 Lua 源文件（7.0 MB）
├── reports/                 # 日志、清单、REA Evidence
├── tools/                   # 可复现提取脚本
└── apk/                     # APK 原始解包（2.8 GB，未改动）
```

---

## 2. REA 分析链路

| 步骤 | REA 命令 | 产物/结论 |
|---|---|---|
| 环境自检 | `rea doctor` | CLI 6.8.0，JADX/Ghidra provider 就绪 |
| Android 清单 | `rea inspect-android-package` | 包名、版本、SDK 26/30、35 项权限、130 个类、21819 个资源；Evidence `ev_ef645191…` |
| Java 类清单 | `rea search-android-classes` | 130 个类全部为混淆的 `IOoOo00o0II.*`，仅 UniSDK 登录/支付/协议壳，无玩法逻辑 |
| 原生导出 | `rea inspect-native-exports libBootloader.so` | ELF64 AArch64，67,475,200 B，1063 个动态导出符号；Evidence `ev_6021e34a…` |
| 原生子系统 | 导出符号 + 字符串检索 | 识别 170+ 个 `*Barn` 子系统（见 `SOURCE_MODULES.md`） |
| Lua VM | Ghidra 反汇编 `luaP_opmodes`（文件偏移 `0x6ac6e9`） | 恢复定制 opcode 排列，修补 unluac |
| Lua 反编译 | 修补版 unluac (`--sky --opmap`) | 146/147 个 `.luac` → 可读源码，255,613 行 |

> extern Ghidra 需要 `GHIDRA_INSTALL_DIR=/opt/ghidra_12.1.4_PUBLIC`；JADX 需要 `REA_JADX_MCP_JAR=/root/.local/share/rea/android/jadx-headless-mcp-0.7.1-all.jar`。

---

## 3. 核心结论（复刻必读）

1. **架构**：`Java 壳 → libBootloader.so（Ancestor Engine）→ 定制 Lua 5.2 → JSON 数据表 → 素材包`。
2. **玩法规则在 C++，不在 Lua**。Lua 只做资源清单（`Persistent.lua` 378 条 `resource()`）、关卡注册（`AllLevelList`）和热更胶水。
3. **内容是数据驱动的**：外观 `OutfitDefs` 1649 条、NPC 622 条、世界任务 368 条、星座 449 条、收集品 248 条、行为树 22 个。
4. **关卡 = 对象清单 + 烘焙几何**：`Objects.level.bin`（TGCL）描述摆位与逻辑对象，`BstBaked.meshes`（LVL0/GEO0/LOD0/METR + meshopt）提供渲染几何。
5. **核心循环**：跑图收集烛火/蜡烛 → 兑换外观与动作 → 解锁先祖/星座 → 季节任务 → 社交互动（好友、牵手、乐器、烟花、拍照）。
6. **飞行手感**是复刻成败关键：`StepController` / `StepJump` / `FlightComputer` / `Rail` 四套原生子系统，需按帧调参而非照搬公式。

详细拆解见 [CORE_LOGIC.md](CORE_LOGIC.md)。

---

## 4. 素材库存（截至本次分析）

| 类别 | 数量 | 体积 | 备注 |
|---|---|---|---|
| 纹理 PNG | 873 | 135 MB | KTX/ETC2 转码 |
| 网格 OBJ | 6404 | 655 MB | 5626 带面，778 点云，782 失败 |
| 关卡 GLB | 111 | 743 MB | 110 份 `*_markers.json`，共 24,954 个逻辑标记 |
| 音频 OGG | 9683 | 584 MB | 143 个 FMOD bank 全部导出 |
| 动画 JSON | 163 | 297 MB | 全部 animpack 已解 |
| 着色器 GLSL | 4500 | 45 MB | 0 失败 |
| 字体 | 16 | 121 MB | `.slug` + `.fnt` |
| 体积纹理 | 3 | 2.3 MB | 云/噪声 |
| 配置 JSON | 56+ | 9.1 MB | Defs + 行为树 |

（以上为本次分析的最终导出数量；逐文件明细见 `reports/audio_manifest.csv`、`reports/meshes.log`、`reports/textures.log`。）

---

## 5. 复刻起步建议

- **先做垂直切片**：一张小地图 + 飞行 + 烛火收集 + 一个先祖兑换，跑通“收集→兑换”闭环。
- **数据表先行**：直接借用 ID 体系（Outfit/Npc/Quest/Constellation）设计自己的 Schema，避免后期迁移。
- **关卡编辑器**：按 `Objects.level.bin` 的对象/标记模型设计自有格式（JSON + 实例化），比复刻 TGCL 更划算。
- **素材替换**：本包素材仅用于研究；公开发布需替换全部美术、音频、文本与字体。
- **联机**：账号、好友、房间、商店均由服务端裁决，单机复刻可先做本地模拟。

---

## 6. 复现命令

```bash
# 1) Lua 反编译（需修补版 unluac）
java -cp /tmp/patchclasses:/tmp/unluac-classes unluac.Main --sky --opmap <opmap.txt> <file.luac>

# 2) 素材
python3 tools/convert_textures.py
python3 tools/export_meshes.py
python3 tools/convert_shaders.py
python3 tools/extract_audio.py

# 3) 关卡
printf '2\n<Data/Levels>\n<Data/Meshes/Bin>\n<out>\nglb\nmaterial\ny\n' | python3 /tmp/Sky-map-to-model/Sky-map-to-model.py

# 4) 动画
python3 /tmp/sky-animpack-tool/animpack_tool.py d <x.animpack> <out.json>

# 5) REA 证据复跑
export GHIDRA_INSTALL_DIR=/opt/ghidra_12.1.4_PUBLIC
export REA_JADX_MCP_JAR=/root/.local/share/rea/android/jadx-headless-mcp-0.7.1-all.jar
rea inspect-android-package /workspace/Sky-0.16.7-421589-android.apk --format md
rea search-android-classes /workspace/Sky-0.16.7-421589-android.apk "" --format json
rea inspect-native-exports /workspace/sky/apk/lib/arm64-v8a/libBootloader.so --format md
```

---

## 7. 版权与使用限制

光·遇（Sky: Children of the Light）由 thatgamecompany 开发、网易代理。本资料包中的所有代码、数据、美术、音频、字体均版权归原权利人所有，**仅限个人学习与格式研究，不得再分发或用于商业作品**。复刻项目必须使用原创素材与自行实现的代码。
