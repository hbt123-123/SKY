resource("SlugFont")("Latin")({
  source = "Lato/Lato-Light.ttf",
  type = "regular",
  outline = 0.1,
  inlineImages = true
})
resource("SlugFont")("Latin-Bold")({
  source = "Lato/Lato-Regular.ttf",
  type = "bold",
  outline = 0.1,
  inlineImages = true
})
if PLATFORM == "nx" or PLATFORM == "ps4" or PLATFORM == "win" or PLATFORM == "macosx" or PLATFORM == "android" or PLATFORM == "iphoneos" then
  resource("SlugFont")("Thai")({
    source = "NotoSans/NotoSansThai-Regular.ttf",
    type = "regular"
  })
  resource("SlugFont")("Thai-Bold")({
    source = "NotoSans/NotoSansThai-Bold.ttf",
    type = "bold"
  })
  resource("SlugFont")("Emoji")({
    source = "Twemoji/TwemojiMozilla.ttf",
    color = true
  })
  if not NT_FORCE_SYS_FONT then
    resource("SlugFont")("SC-Uni-1")({
      source = "NotoSans_SC/NotoSansSC-Regular.ttf",
      include = {
        "0x4E00,0x62FF"
      }
    })
    resource("SlugFont")("SC-Uni-2")({
      source = "NotoSans_SC/NotoSansSC-Regular.ttf",
      include = {
        "0x6300,0x77FF"
      }
    })
    resource("SlugFont")("SC-Uni-3")({
      source = "NotoSans_SC/NotoSansSC-Regular.ttf",
      include = {
        "0x7800,0x8CFF"
      }
    })
    resource("SlugFont")("SC-Uni-4")({
      source = "NotoSans_SC/NotoSansSC-Regular.ttf",
      include = {
        "0x8D00,0x9FFF"
      }
    })
    resource("SlugFont")("SC-Ext-A")({
      source = "NotoSans_SC/NotoSansSC-Regular.ttf",
      include = {
        "0x3400,0x4DBF"
      }
    })
    resource("SlugFont")("SC-Ext-B-I")({
      source = "NotoSans_SC/NotoSansSC-Regular.ttf",
      include = {
        "0x20000,0x2EE5F",
        "0x30000,0x323AF"
      }
    })
    resource("SlugFont")("SC-Remaining")({
      source = "NotoSans_SC/NotoSansSC-Regular.ttf",
      exclude = {
        "0x4E00,0x9FFF",
        "0x3400,0x4DBF",
        "0x20000,0x2EE5F",
        "0x30000,0x323AF"
      }
    })
    resource("SlugFont")("CJK-Remaining")({
      source = "NotoSans_SC/NotoSansSC-Regular.ttf",
      exclude = {
        "0x2026,0x2026",
        "0x4E00,0x9FFF",
        "0x3400,0x4DBF",
        "0x20000,0x2EE5F",
        "0x30000,0x323AF",
        "0x2F00,0x2FD5",
        "0x2E80,0x2EF3",
        "0xF900,0xFAD9",
        "0x2F800,0x2FA1D",
        "0x31C0,0x31E3",
        "0x2FF0,0x2FFF",
        "0x3105,0x312F",
        "0x31A0,0x31BF"
      }
    })
  end
  resource("SlugFont")("Special")({
    source = "Thatgamefont/thatgamefont.ttf",
    include = {
      "0x2726,0x2726"
    }
  })
  if PLATFORM ~= "iphoneos" and PLATFORM ~= "android" then
    resource("SlugFont")("Arabic")({
      source = "NotoSans/NotoSansArabic-Regular.ttf",
      type = "regular"
    })
    resource("SlugFont")("Arabic-Bold")({
      source = "NotoSans/NotoSansArabic-Bold.ttf",
      type = "bold"
    })
  end
end
resource("Font")("Arial32")({
  source = "Arial32.fnt",
  image = "Arial32"
})
resource("Font")("Mono32")({
  source = "Consolas32.fnt",
  image = "Consolas32"
})
