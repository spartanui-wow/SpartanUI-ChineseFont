local spartan = LibStub("AceAddon-3.0"):GetAddon("SpartanUI");
local ChineseFont = spartan:NewModule("ChineseFont");

function ChineseFont:OnInitialize()
	if GetLocale() == "zhCN" then
		DB.font.Primary.Face = "Custom"
		DB.font.Core.Face = "Custom"
		DB.font.Player.Face = "Custom"
		DB.font.Party.Face = "Custom"
		DB.font.Raid.Face = "Custom"
		DB.font.Path = "interface\\addons\\SpartanUI_ChineseFont\\Fonts\\NotoSansCJKsc-Regular.otf"
	end
	if GetLocale() == "zhTW" then
		DB.font.Primary.Face = "Custom"
		DB.font.Core.Face = "Custom"
		DB.font.Player.Face = "Custom"
		DB.font.Party.Face = "Custom"
		DB.font.Raid.Face = "Custom"
		DB.font.Path = "interface\\addons\\SpartanUI_ChineseFont\\Fonts\\NotoSansCJKtc-Regular.otf"
	end
end

function ChineseFont:OnEnable()

end
