---@class SUI
local SUI = SUI
local ChineseFont = SUI:NewModule('ChineseFont')

-- Register Chinese fonts with LibSharedMedia
SUI.Lib.LSM:Register('font', 'Noto Sans CJK SC', [[Interface\AddOns\SpartanUI_ChineseFont\Fonts\NotoSansCJKsc-Regular.otf]])
SUI.Lib.LSM:Register('font', 'Noto Sans CJK TC', [[Interface\AddOns\SpartanUI_ChineseFont\Fonts\NotoSansCJKtc-Regular.otf]])

function ChineseFont:OnInitialize()
	-- Set the default font based on locale
	local locale = GetLocale()

	if locale == 'zhCN' then
		-- Set Simplified Chinese font as default
		if SUI.Font and SUI.Font.DB then
			SUI.Font.DB.Modules.Global.Face = 'Noto Sans CJK SC'
			SUI.Lib.LSM:SetDefault('font', 'Noto Sans CJK SC')
		end
	elseif locale == 'zhTW' then
		-- Set Traditional Chinese font as default
		if SUI.Font and SUI.Font.DB then
			SUI.Font.DB.Modules.Global.Face = 'Noto Sans CJK TC'
			SUI.Lib.LSM:SetDefault('font', 'Noto Sans CJK TC')
		end
	end
end

function ChineseFont:OnEnable()
	-- Refresh all fonts to apply the new font face
	local locale = GetLocale()
	if locale == 'zhCN' or locale == 'zhTW' then
		if SUI.Font then
			SUI.Font:Refresh()
		end
	end
end
