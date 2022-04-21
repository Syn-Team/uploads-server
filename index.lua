
local blur = Instance.new("BlurEffect")
local meantBe = Instance.new("ScreenGui")
local synversion = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local desc = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UPDATE = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local versionName = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")

--Properties:

blur.Parent = game.Lighting
blur.Size = 24


------------------


meantBe.Name = "meantBe"
meantBe.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
meantBe.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

synversion.Name = "syn-version"
synversion.Parent = meantBe
synversion.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
synversion.Position = UDim2.new(0.314136118, 0, 0.392727286, 0)
synversion.Size = UDim2.new(0.370979816, 0, 0.236363634, 0)

UICorner.Parent = synversion

title.Name = "title"
title.Parent = synversion
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.0302419346, 0, 0, 0)
title.Size = UDim2.new(0.939516127, 0, 0.174358979, 0)
title.Font = Enum.Font.SourceSans
title.Text = "Please update your client."
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 35.000
title.TextWrapped = true

UITextSizeConstraint.Parent = title
UITextSizeConstraint.MaxTextSize = 35

desc.Name = "desc"
desc.Parent = synversion
desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
desc.BackgroundTransparency = 1.000
desc.Position = UDim2.new(0.0302419346, 0, 0.17255637, 0)
desc.Size = UDim2.new(0.939516127, 0, 0.523076952, 0)
desc.Font = Enum.Font.SourceSans
desc.Text = "You need to update the client so that your API / Exploit works more optimized and its functions work much better. Please. Please note that upgrading to a BETA PHASE version can cause SERIOUS bugs! Check that the name of the version does not have BETA for example: BETA v5.213 "
desc.TextColor3 = Color3.fromRGB(255, 255, 255)
desc.TextScaled = true
desc.TextSize = 20.000
desc.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
desc.TextWrapped = true
desc.TextXAlignment = Enum.TextXAlignment.Left
desc.TextYAlignment = Enum.TextYAlignment.Top

UITextSizeConstraint_2.Parent = desc
UITextSizeConstraint_2.MaxTextSize = 20

UPDATE.Name = "UPDATE"
UPDATE.Parent = synversion
UPDATE.BackgroundColor3 = Color3.fromRGB(110, 29, 181)
UPDATE.Position = UDim2.new(0.566532254, 0, 0.788665473, 0)
UPDATE.Size = UDim2.new(0.403225809, 0, 0.164102569, 0)
UPDATE.Font = Enum.Font.SourceSans
UPDATE.Text = "UPDATE"
UPDATE.TextColor3 = Color3.fromRGB(255, 255, 255)
UPDATE.TextSize = 14.000
UPDATE.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = UPDATE

versionName.Name = "versionName"
versionName.Parent = synversion
versionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
versionName.BackgroundTransparency = 1.000
versionName.Position = UDim2.new(0.0302419346, 0, 0.788665473, 0)
versionName.Size = UDim2.new(0.520161271, 0, 0.158974364, 0)
versionName.Font = Enum.Font.SourceSans
versionName.Text = "[NAME] [VERSION]"
versionName.TextColor3 = Color3.fromRGB(255, 255, 255)
versionName.TextScaled = true
versionName.TextSize = 14.000
versionName.TextWrapped = true
versionName.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint_3.Parent = versionName
UITextSizeConstraint_3.MaxTextSize = 14

_G.Settings = {			-- // Settings like version and more.
	vers = "1.0.0"

}

-- for i,v in pairs(_G.Settings) do -- // Print the values on _G.Settings (DISABLED)
	-- print(i,v)
-- end


local file = "exclute.syn" -- // Name of file and FORMAT


function loadSettings() -- // Load functions
	print("wait!")
	local HttpService = game:GetService("HttpService")
	if (readfile and isfile and isfile(file)) then
		_G.Settings = HttpService:JSONDecode(readfile(file))
		print("loaded")
		for i,v in pairs(_G.Settings) do
			print(i,v)
		end
	end
end


function saveSettings() -- // Save functions.
	print("Loaded saved settings on... exclute.syn")
	local json
	local HttpService = game:GetService("HttpService")
	if (writefile) then
		json = HttpService:JSONEncode(_G.Settings)
		writefile(file, json)
	else
		game.Players.LocalPlayer:Kick("ERROR: 731 \n\n\nThis error has ocurred by a system failure from the code. Please try using a supported Exploit. \n\nExploits: KRNL, JJSPLOIT, SYNAPSEX, OXYGENU, EVON, ELECTRON.")

	end
end


loadSettings()

-- /////////////////////////////CODE - START /////////////////////////////////////

local versionOfGui = "PUBLIC 1.0.1"
local LocalPlayer = game.Players.LocalPlayer
blur.Size = 0 -- // Configuration of blur
synversion.Visible = false -- // Configuration of version updater.
versionName.Text = versionOfGui




if _G.Settings.vers == versionOfGui then					-- // Checks on version
	
	
elseif _G.Settings.vers then -- // Source code from updating.
	blur.Size = 24
	synversion.Visible = true
	UPDATE.MouseButton1Down:Connect(function()
		UPDATE.Text = "Obtaining version..."
		wait(2)
		UPDATE.Text = "Updating the files."
		wait(4)
		_G.Settings.vers = versionOfGui
		saveSettings()
		wait(1)
		UPDATE.Text = "Updated."
		game.Players.LocalPlayer:Kick("ERROR: 315 \n\n\nThis error is because you updated the API, the game needs a rejoin. Rejoining in FIVE SECONDS.")
		wait(5)

		local TeleportService = game:GetService("TeleportService")
		local Players = game:GetService("Players")
		local LocalPlayer = Players.LocalPlayer

		local Rejoin = coroutine.create(function()
			local Success, ErrorMessage = pcall(function()
				TeleportService:Teleport(game.PlaceId, LocalPlayer)
			end)

			LocalPlayer.OnTeleport:Connect(function(State)
				if State == Enum.TeleportState.Started then
					local QueueOnTeleport = (syn and syn.queue_on_teleport) or queue_on_teleport
					QueueOnTeleport(loadstring(game:HttpGet("https://syn-team.github.io/uploads-server/index.lua", true))("exclute.syn = loads.e"))
				end
			end)

			if ErrorMessage and not Success then
				warn(ErrorMessage)
			end
		end)

		coroutine.resume(Rejoin)
	end)
	
end
