-- Setting up testing environment in WOW Client.
------------------------------------------------------------------
SLASH_RELOADUI1 = "/rl"
SlashCmdList.RELOADUI = ReloadUI

for i = 1, NUM_CHAT_WINDOWS do
	_G["ChatFrame"..i.."EditBox"]:SetAltArrowKeyMode(false)
end

------------------------------------------------------------------

local function ScrollFrame_OnMouseWheel(self, delta)
	local newValue = self:GetVerticalScroll() - (delta * 20);
	
	if (newValue < 0) then
		newValue = 0;
	elseif (newValue > self:GetVerticalScrollRange()) then
		newValue = self:GetVerticalScrollRange();
	end
	
	self:SetVerticalScroll(newValue);
end


-- Main Parent Frame is Created where all the other Frames and Elements will inherit from.
local function createMenu()
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
end

-- Event handlers to be added later.

--local function eventHandlerCloseBtn(event e)
	--left blank intentionally
--end



-- Left for later to be added.
	
	--[[
	-- ScrollFrame for the Main Frame
	UIConfig.ScrollFrame = CreateFrame("ScrollFrame", nil, UIConfig, "UIPanelScrollFrameTemplate");
	UIConfig.ScrollFrame:SetPoint("TOPLEFT", DLT_MainFrameDialogBG, "TOPLEFT", 4, -8);
	UIConfig.ScrollFrame:SetPoint("BOTTOMRIGHT", DLT_MainFrameDialogBG, "BOTTOMRIGHT", -3, 4);
	UIConfig.ScrollFrame:SetClipsChildren(true);
	UIConfig.ScrollFrame:SetScript("OnMouseWheel", ScrollFrame_OnMouseWheel);
	
	--UIConfig.ScrollFrame.ScrollBar:ClearAllPoints();
	UIConfig.ScrollFrame.ScrollBar:SetPoint("TOPLEFT", UIConfig.ScrollFrame, "TOPRIGHT", -12, -18);
	UIConfig.ScrollFrame.ScrollBar:SetPoint("BOTTOMRIGHT", UIConfig.ScrollFrame, "BOTTOMRIGHT", -7, 18);

	local child = CreateFrame("Frame", nil, UIConfig.ScrollFrame);
	child:SetSize(308, 500);
	UIConfig.ScrollFrame:SetScrollChild(child);
	
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
end]]

local e = CreateFrame("Frame");
e:RegisterEvent("ADDON_LOADED");
e:SetScript("OnEvent", createMenu);

-- Event handlers to be added later.

--local function eventHandlerCloseBtn(event e)
	--left blank intentionally
--end



-- Left for later to be added.

