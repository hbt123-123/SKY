# Sky（光遇）安装包逆向研究笔记

> 目标：为"复刻一个类似光遇的小游戏"收集素材与信息。本文记录 2026-11-06 对两个样本的静态分析结果（未运行任何目标程序）。
> 样本 A：`Sky-Gold-0.16.7-421589-obt_75509_netease_unisec_minify_....apk`（网易国服安卓包，sha256 `db9c786629159a...`）
> 样本 B：`sky.7z`（PC 国服根目录，主程序 `Sky.exe` 47MB，sha256 `7a94e8a7f22a462e...`）
> ⚠️ 版权边界：光遇由 thatgamecompany 开发、网易代理发行。从包内提取的一切美术/音频/文本/代码均为 TGC 与网易的版权资产，仅可用于个人学习研究文件格式，**不得再分发或直接用于自研游戏**。自研作品需要原创美术与音频。

## 1. 技术栈总览（证据）

| 层 | 结论 | 证据 |
|---|---|---|
| 引擎 | TGC 自研 **Ancestor Engine** | `libBootloader.so` 字符串 `Ancestor Engine`/`AncestorEngineBarn`；着色器族名 `AncestorEngine-*.spv`；Windows 同引擎编译进 `Sky.exe` |
| 脚本 | **Lua 5.2**（SWIG 绑定，网易补丁加了 lua-zlib / lua-cmsgpack） | `.luac` 头 `1b 4c 75 61 52 00 01 04 08 04 08 00 19 93 0d 0a 1a 0a`；so 内 `SWIG_Lua_*`、`LUA_PATH_5_2`、`Netease/Patch/ThirdParty/lua-zlib` |
| 图形 | Android: **Vulkan**（着色器 SPIR-V） | `libvulkan.so`、`VulkanRenderer`、`Shaders/Bin/*.spv`；KTX 内 `KramVulkanFormat` 元数据。PC 端 API 未能确认（Sky.exe 被 unisec 加壳，导入表只有 `dxgi.dll`，D3D11/12/Vulkan 均为动态加载，**未知**） |
| 音频 | **FMOD**：容器为 RIFF "FEV"（FMOD Designer 事件格式），采样数据为内嵌 **FSB5** | 所有 `*.bank` 以 `RIFF....FEV ` 开头；`Common.streams.bank`(172MB) 内部 LIST/PROJ 结构（BNKI/EVTS/PRMS/SNAS/VCAB…）+ 两个 `'SND '` 大块，其内 0x5840 处出现 `FSB5`；`MasterBankGold.strings.bank` 为文本（`\r\nMasterBank...`） |
| 视频 | FFmpeg + Media Foundation | `libccffmpeg/libijkffmpeg/avcodec-58.dll`、`MFPlat.DLL` |
| 网络服 | 网易 live-* 域名集群 | `config.json`: `live-ws-sky-merge.game.163.com` 等（findings/pc_config.json） |
| 平台库 | SDL2 (Android)、CEF webview (PC)、网易 UniSDK 全家桶 | `libSDL2.so`、`webviewsupport.cef904430/`、`NtUniSdk*.dll` |
| 反调试/加固 | 网易 UniSec（minify）+ QSEC + CrashHunter | APK 文件名、`libunisec.so`、Sky.exe 字符串大面积加密 |

## 2. 资源组织结构

### 2.1 PC 端（pak/*.pak）
**`.pak` 就是标准 ZIP 容器**（PK 头、明文路径 `Data/...`，store/deflate），直接 unzip 可解。分区：
`initial.pak`(2.5GB 总包) + 领域包 `dawn`(晨岛) `prairie`(云野) `rain`(雨林) `sunset`(霞谷) `dusk`(暮土) `night`(禁阁) `storm`(伊甸) + `images.pak` `meshes.pak` `audioExtra.pak`(Fmod fmodswitch 音频)。
全量解包结果在 `/tmp/opencode/sky/pakext/`（共 ~4.5GB，扩展名统计：7200 .mesh、2706 .spv、874 .ktx、199 .bank、163 .animpack、147 .luac、118 .meshes、58 .json、16 .slug、31 .bnvib…）。

### 2.2 Android 端（assets/Data）
松散文件（2.5GB，首包子集），目录：`Audio/Fmod` `BlobPrefabs` `Fonts` `Images` `Levels` `LGD` `Manifests` `Meshes` `RemoteResources` `Resources` `Scripts` `Shaders` `Tex3D` `Vars`。完整清单由 `Data/LGD/patchlist.json`（2MB JSON，每个文件 [md5,size,mtime,crc]，total_size 1.7GB）描述——这是网易 LGD 热更系统的全量文件清单。
`lgd.npk`（105KB）头部 `NXPK:`；`LGD/record` 内含热更配置 URL `https://ma75.update.netease.com/config/0.16.7-421589-Android-obt.json`（实测可访问，返回服务器配置）。

### 2.3 交叉验证结果
- APK `assets/Data/Resources/*.json` 与 PC `initial.pak/Data/Resources/*.json` **逐字节一致**（抽样 OutfitDefs/NpcDefs/MapDefs/Constellations/QuestConfig 同 sha256）→ 设计数据平台无关，是权威配置。
- 两端均为同一引擎与同一资源布局；Android 纹理走 ETC2（`Images/Bin/ETC2`），PC 走 BC（`Images/Bin/BC`），都是 Kram 生成的 KTX。

## 3. 数据/资源格式明细（全部为本机观察）

### 3.1 明文 JSON 设计数据（最直接的"素材"）
`Resources/` 下可直接读：`OutfitDefs.json`(1.5MB, 装扮: mesh/diffuseTex/icon/shader/season)、`NpcDefs.json`(715KB)、`MapDefs.json`、`Constellations.json`(星座解锁树)、`QuestConfig/QuestGroups/WorldQuestDefs/DailyQuestDefs`、`CollectibleDefs`、`SeasonTemplate`、`DyeColorDefs`、`BehaviorTrees/NPC_*.json`(行为树)、`MessageTypes.json`、`SheetSort_Netease.json` 等 ~58 个。
另有编译 Lua：`Boot.lua.luac`、`Resources/*.luac`（如 SoundDefs、MeshDefs、ImageDefs、UI atlas 打包表）。
多语言文本：PC `data/Strings/<lang>.lproj/Localizable.strings`（Apple 风格 key-value，中文等 12 语种直接可读）。

### 3.2 关卡
`Levels/<名>/` 三个文件：
- `Objects.level.bin` — 魔数 **`TGCL`**（ThatGameCompany Level），随后 u32 数组（版本/段偏移/数量），关卡对象摆放的序列化。
- `BstBaked.meshes` — 块容器：`LVL0` → `GEO0`(几何) / `LOD0` / `METR`(材质引用)。
- `Resources.lua.luac` — 该关卡的 Lua 资源清单。
关卡名与领域映射见 findings/AllLevelList.lua（初始关卡列表，明文）。
`BlobPrefabs/<名>/Objects.level.bin` 为预制件（60 个）。

### 3.3 网格/动画
- `.mesh`（7200 个）：`u32 名字长度 + 名字串` 开头，二进制顶点/索引数据。
- `.animpack`（163）：同样以 `u32 len + 名字串` 开头（如 `CharSkyNPC_Skeleton_AP24Bell`）。

### 3.4 纹理
- `.ktx`（874）：标准 KTX 容器，GPU 压缩（PC=BC, Android=ETC2），元数据由 **Kram** 写入（`KramVulkanFormat`/`KramMetalFormat`/`KramAddress`/`KramFilter`）。Kram 是开源纹理处理工具。
- `.slug`（16，仅 Fonts/Bin）：魔数 **`guls`**（"slug" 反写），分段容器（`fnt`/`4FLH`/`2U61` 等 4cc 段），字体图集专用格式；字形表另有 BMFont 文本 `.fnt`（`Arial32.fnt`）。

### 3.5 音频
- `.bank` = RIFF `FEV ` 容器：`FMT `+`LIST/PROJ`(BNKI/EVTS/PRMS/SNAS/VCAS/TMNL…) 事件树 + **`'SND '` 原始采样块，内嵌 FSB5**。提取路径：解析 RIFF 取 SND → 按 FSB5 解析（社区 python-fsb5 可解 Vorbis/PCM）。
- PC 侧 `audioExtra.pak` 内是 `fmodswitch` 目录的补充 bank（Music_AP11..AP31 等）。
- `MasterBankGold.strings.bank` 是明文文本（事件-文件映射）。

### 3.6 着色器
`.spv`（SPIR-V）+ 同名 `.ref`（反射/绑定信息，文本可读）；命名 `AncestorEngine-*.android.spv`。`CompressDictionary.zst` 为 zstd 词典（配合压缩传输）。

### 3.7 Lua 字节码（已破解结构，2026-11-06 本机验证 19/19 文件精确解析到 EOF）
Sky 的 `.luac` = **魔改 Lua 5.2 dump**，与官方 5.2 差异共 4 处（findings/sky_luac_parser.py 为可用解析器）：
1. 标准 12 字节头（`\x1bLua` + 版本 0x52 + endian/int4/sizeT8/instr4/number8/integral0）后追加 6 字节校验标记 `19 93 0D 0A 1A 0A`（5.3 风格 LUAC_DATA）。
2. 字符串长度为 **4 字节 int**（非 size_t 8），且长度含结尾 NUL、NUL 字节写出（官方 5.2 只写 len-1 字节）。
3. 函数头**无 source 字段**：`[linedef u32][lastlinedef u32][numparams u8][is_vararg u8][maxstack u8]`；源名移到 debug 段（lineinfo 之前）。
4. 段顺序：code → constants(类型 0/1/3/4) → protos → upvalues(每项 2B) → debug(source, lineinfo u32×n, locvars, upvalnames)。
5. **指令编号被 TGC 定制**：CALL=29、RETURN=31 仍在官方位置；实测 GETTABUP 出现在 12、SETTABLE 在 16（官方 6/10），完整映射表需继续实证恢复。libBootloader.so 内 luaP_opmodes 表已定位（两份 40 字节表，与官方 5.2 大体一致但存在改动），完整恢复后 unluac 即可全量反编译——补丁代码在 findings/unluac-sky-patch/（--sky 开关 + 4 字节字符串长度），解析层已打通，仅剩 opmap。
6. 脚本大量使用 SWIG 绑定（`SWIG_Lua_*`），玩法逻辑全部在 Lua 侧；网易补丁向 VM 注入 lua-zlib / lua-cmsgpack。

### 3.8 音频容器版本（已证实）
- `.bank` RIFF/FEV 的 `FMT ` 块：formatVersion **0x8E (142)**、minVersion **0x8C (140)** → **FMOD Studio 2.0x** 生成的 bank。
- 内嵌 FSB5：版本字段=1（Studio 2.x 时代）、采样数、codec 字节=15（**Vorbis**）。例：`Common.streams.bank` 内 275 个采样。
- 提取路径：解析 RIFF 取 `'SND '` 块 → FSB5 → python-fsb5 / Fmod5Sharp / vgmstream 解出 ogg。

### 3.9 NetEase NXPK（lgd.npk）
`NXPK:` 魔数 = 网易 NeoX2 引擎档案格式（公开工具：aluigi `nxpk.bms`、Rust `denpk2`、C# `NXPKReader`）。实测包头：`NXPK:` + u32[0x3a=文件数?, 0, 0, 2=版本, 数据长度 0x193f0, 16B 哈希/密钥...]。`patchlist.json` 为全量热更清单（1.7GB 内容的 [md5,size,mtime,crc] 表）。

### 3.10 其他
`.bnvib`（31）：触觉反馈定义（Haptics 目录）；`.vol`：Tex3D 体积纹理（CloudFluffy.vol 等）；`.bin` 杂项；`Haptics/` 目录 17 个。

## 3A. 社区已有工具（2026-11 调研，URL 已核验）
| 工具 | 语言 | 覆盖 |
|---|---|---|
| oldmud0/SkyEngineTools | Python | .mesh 导出、音频提取、TGCL/mesh 的 ImHex 模式与 TrID 定义 |
| lumiio/that-sky-Decoders | C++ | **最全**：BstBaked.meshes(GEO0 顶点 stride36/烘焙光照流)、.mesh(LZ4 压缩变体)、.animpack、Objects.level.bin(16 元矩阵/WATER/MAT 节点)、KTX、meshoptimizer 式 LOD0 量化解码 |
| skyIshier/Sky-map-to-model | Python | .mesh v0x17–0x20、LVL0、TGCL→GLB/OBJ |
| kfhammond/SkyModelViewer | C# | 本地网格查看器，内置 BC4/BC7 KTX 解码 |
| sstalkerr31-ai/sky-animpack-tool | Python | .animpack↔JSON（含格式文档：u32 version 11 + char[64] 名 + 骨骼数 + LZ4 块） |
| thatskymod/Sky-CotL-Scripts | Lua | PC 注入式 mod 生态（SkyLoader 等，PC 渲染层为 Native Vulkan + D3D11 overlay 注入） |
| HearthSim/python-fsb5、Fmod5Sharp、vgmstream | Py/C#/C | FSB5 解码（Vorbis/PCM） |
| aluigi nxpk.bms、hax0r31337/denpk2、Razmoth/NXPKReader | — | NXPK 解包 |
**无公开工具**：.slug（"guls"）字体容器、Sky 定制 opcode 映射表 —— 均为本项目独有突破口。社区 PC mod 全部走运行时注入而非 repack pak。

## 3B. 未解问题（优先级序）
1. Sky opcode 完整映射（解析器+unluac 补丁已就绪，只差 opmap；可行路径：用真 Lua 5.2 编译模式语料对照 + LevelSelect.lua 逻辑反推）。
2. TGCL(Objects.level.bin) 字段级布局（社区有参考实现可对照）。
3. .mesh 顶点字段与 KTX+slug 纹理细节（that-sky-Decoders 已给出大部分答案）。
4. PC 图形 API：SkyLoader 社区文档称 Native Vulkan（导入表仅见 dxgi，符合"Vulkan 渲染 + DXGI 交换链/overlay"）。

## 4. 启动/SDK 链
- Android 入口 Activity：`com.netease.ntunisdk.external.protocol.ProtocolLauncher`（UniSDK 协议壳）→ 引擎 `libBootloader.so`（JNI）。
- 包名 `com.netease.sky`，versionName 0.16.7 (code 421589)，minSdk 26 / targetSdk 30。
- PC 入口 `Sky.exe`；登录/支付/语音等全部由 NtUniSdk*.dll 承担；`data/config.json`（findings/pc_config.json）记录全部服务器地址。
- 服务器：`live-ws-sky-merge.game.163.com`(websocket)、`live-as-sky-merge.game.163.com`(账号)、`live-queue-sky-merge.game.163.com`(排队) 等。

## 5. 对"做类光遇小游戏"的借鉴清单（信息层面）
1. **数据驱动**：装扮/NPC/任务/星座/行为树全部是扁平 JSON 表 + 少量 Lua —— 自研可完全复用这种"Defs 表 + 行为树"模式（格式自己定）。
2. **领域=包**：按 7 个领域拆资源包（dawn/prairie/rain/sunset/dusk/night/storm）+ initial 总包，移动端友好。
3. **Lua 为核心胶水**：引擎仅提供 SWIG 绑定的 API，玩法在 Lua —— 改动不发版。
4. **音频管线**：FMOD 事件系统（bank/事件/VCA/快照），音乐按赛季 AP 编号分 bank。
5. **纹理管线**：KTX + Kram 离线压缩（每平台一套压缩格式）。
6. **热更**：patchlist.json 全量清单 + LGD/NXPK 增量补丁 + zstd 词典压缩。
7. 本地化：`<lang>.lproj/Localizable.strings` 约定。

## 6. 证据与未知项
- REA Evidence: APK 归档 `ev_2924cfef...`（60464 entries 完整清单）；Android 包 `ev_62633e2b...`（manifest/组件完整解析）；PC PE `Sky.exe` sha256 `7a94e8a7...`；`libBootloader.so` sha256 `0b81f1da...`（ELF arm64）。
- REA 本会话**无原生深分析 provider**（Ghidra/Hopper/IDA 均未安装），引擎函数级反编译未做；如需可装 provider 后定向反编译字符串引用的加载函数。
- PC 图形 API 未在本机确认（壳加密，导入表仅 dxgi）；社区 SkyLoader 文档描述为 Native Vulkan + D3D11 注入 overlay。
- `patchlist.json` 提示运行期另有 ~1.7GB 热更内容（更多关卡/装扮），本包只是 0.16.7 当前时点内容。
- FMOD FMT 版本 0x8E/0x8C 与 FSB5 v1 + Vorbis codec 为本机读出（证据见 §3.8）。
- Lua 结构解析 19/19 精确 EOF（sky_luac_parser.py 实跑）；opcode 映射部分恢复（见 §3.7）。

## 7. 产出物索引
- `SKY_RESEARCH_NOTES.md` — 本笔记
- `findings/sky_luac_parser.py` — Sky .luac 结构解析器（已验证）
- `findings/unluac-sky-patch/` — unluac 补丁源文件（--sky 开关，解析层已通）
- `findings/AllLevelList.lua` — 初始关卡列表（明文）
- `findings/pc_config.json` / `apk_config.json` — 双端服务器/SDK 配置
- `findings/error_code.json` — 错误码表
- `findings/lgd_record.json` — LGD 热更记录（含在线配置 URL）
- `/tmp/opencode/sky/pakext/` — PC 全部 11 个 pak 解包结果（~4.5GB：7200 mesh、2706 spv、874 ktx、199 bank、163 animpack、147 luac…）
- `/tmp/opencode/sky/apk/` — APK 解包（assets/Data 2.5GB 松散资源）
