-- Setting up testing environment in WOW Client.
------------------------------------------------------------------
SLASH_RELOADUI1 = "/rl"
SlashCmdList.RELOADUI = ReloadUI

SLASH_FRAMESTK1 = "/fs/"
SlashCmdList.FRAMESTK = function()
	LoadAddOn('Blizzard_DebugTools')
	FrameStackTooltip_Toggle()
end

for i = 1, NUM_CHAT_WINDOWS do
	_G["ChatFrame"..i.."EditBox"]:SetAltArrowKeyMode(false)
end

------------------------------------------------------------------
-- Main Parent Frame is Created where all the other Frames and Elements will inherit from.
local UIConfig = CreateFrame("Frame", "DLT_MainFrame", UIParent, "BasicFrameTemplateWithInset")
UIConfig:SetSize(360,420);
UIConfig:SetPoint("CENTER", UIParent, "CENTER");

UIConfig.title = UIConfig:CreateFontString(nil, "OVERLAY");
UIConfig.title:SetFontObject("GameFontHighlight");

UIConfig.title:SetPoint("Left", UIConfig.TitleBg, "Left", 5, 0);
UIConfig.title:SetText("Dungeon Loot Tracker");



-- Buttons for the Main Frame
UIConfig.closeBtn = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.closeBtn:SetPoint("CENTER", UIConfig, "Bottom", 0, 30);
UIConfig.closeBtn:SetSize(60, 30);
UIConfig.closeBtn:SetText("Close");
UIConfig.closeBtn:SetNormalFontObject("GameFontNormalLarge");
UIConfig.closeBtn:SetHighlightFontObject("GameFontHighlightLarge");

-- Potential Sliders for the main frame.

UIConfig.sliderBtn = CreateFrame("Slider", nil, UIConfig, "OptionsSliderTemplate");
UIConfig.sliderBtn:SetPoint("CENTER", UIConfig, "CENTER", 0, 135);
UIConfig.sliderBtn:SetMinMaxValues(10, 50);
UIConfig.sliderBtn:SetValue(20);
UIConfig.sliderBtn:SetValueStep(10);
UIConfig.sliderBtn:SetObeyStepOnDrag(true);


-- Event handlers to be added later.

--local function eventHandlerCloseBtn(event e)
	--left blank intentionally
--end



-- Left for later to be added.

