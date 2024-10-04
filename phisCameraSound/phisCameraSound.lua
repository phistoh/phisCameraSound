local addonName, phis = ...

local phisFrame = CreateFrame('Frame', addonName..'CheckFrame', UIParent)
phisFrame:RegisterEvent("SCREENSHOT_SUCCEEDED")

phis.SCREENSHOT_SUCCESS = SCREENSHOT_SUCCESS
SCREENSHOT_SUCCESS = ""

phisFrame:SetScript("OnEvent", function(self, event, ...) 
	if event == "SCREENSHOT_SUCCEEDED" then
		PlaySound(18187, "master")
		print('|cFFFFFF00'..phis.SCREENSHOT_SUCCESS..'|r')
	end
end)
