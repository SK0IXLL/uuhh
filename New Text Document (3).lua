	MainSector:CreateToggle("Wall Check", HyperEscape.AimBot.WallCheck, function(AWC) HyperEscape.AimBot.WallCheck = AWC ;end);
	MainSector:CreateDropDown("Hit Scan", {"Head", "HumanoidRootPart"}, HyperEscape.AimBot.AimPart, false, function(AHS) HyperEscape.AimBot.AimPart = AHS; end);

	local FovSecor = AimBotTab:CreateSector("FOV Cirlce", "Left");
	local FovSecor = AimBotTab:CreateSector("FOV Circle", "Left");
	FovSecor:CreateToggle("Show Fov", HyperEscape.AimBot.ShowFov, function(AFE) HyperEscape.AimBot.ShowFov = AFE; end);
	FovSecor:CreateSlider("Cirlce Radius", 0, HyperEscape.AimBot.Fov, 1500, 1, function(FCR) HyperEscape.AimBot.Fov = FCR; end);
	FovSecor:CreateSlider("Circle Radius", 0, HyperEscape.AimBot.Fov, 1500, 1, function(FCR) HyperEscape.AimBot.Fov = FCR; end);

	local OtherSector = AimBotTab:CreateSector("Other", "Right");
	OtherSector:CreateToggle("Prediction", HyperEscape.AimBot.Prediction, function(APE) HyperEscape.AimBot.Prediction = APE; end);
@@ -1890,7 +1890,7 @@ else

			local posd = UIS:GetMouseLocation();
			FOVFFrame.Position = UDim2.new(0, posd.X, 0, posd.Y - 36);
			FOVFFrame.Size = UDim2.fromOffset(HyperEscape.AimBot.Fov, HyperEscape.AimBot.Fov);
			FOVFFrame.Size = UDim2.fromOffset(HyperEscape.AimBot.Fov * 1.5, HyperEscape.AimBot.Fov * 1.5);
		else
			UIStroke.Enabled = false;
		end