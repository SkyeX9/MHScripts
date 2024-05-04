local TweenService = game:GetService("TweenService")
local RS = game:GetService("ReplicatedStorage")
local tweentime = 0.5

local SettingsT = game:service'HttpService':JSONDecode(readfile("Ironic Hub/Miners Haven/Theme.Ironic"))
local SettingsV = game:service'HttpService':JSONDecode(readfile("Ironic Hub/Miners Haven/Version.Ironic"))

local guiname = "Ironic's Miner's Haven Ghost Client - v"..SettingsV.ScriptVersion
local salvageguiname = "Auto Salvage"

local selectedSalvages = {}

	local function transitionTo(from, onto, ontosize, glowthing) 
		from.Active = false
		onto.Active = true
		onto.AnchorPoint = Vector2.new(0,0)
		displacementThingy = 0
		screendisp = -38
		if onto.Name == "Upgraders" then
			print("here")
			displacementThingy = 0
			screendisp = 0
		end
		onto.Position = from.Position - UDim2.new(0,0,0,displacementThingy)
		--screenframe.Visible = true
		--screenframe.Position = from.Position - UDim2.new(0,0,0,screendisp)
		_G.followdragcrates = from:GetPropertyChangedSignal("Position"):Connect(function(value)
			onto.AnchorPoint = Vector2.new(0,0)
			onto.Position = from.Position - UDim2.new(0,0,0,displacementThingy)
			--screenframe.Position = from.Position - UDim2.new(0,0,0,screendisp)
		end)
		transparenciesSec = {}
		for i,v in pairs(onto:GetDescendants()) do
			if v:IsA("ImageLabel") then
				table.insert(transparenciesSec, v.ImageTransparency)
				v.ImageTransparency = 1
				table.insert(transparenciesSec, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("TextLabel") then
				table.insert(transparenciesSec, v.TextTransparency)
				v.TextTransparency = 1
				table.insert(transparenciesSec, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("ScrollingFrame") then
				table.insert(transparenciesSec, v.ScrollBarImageTransparency)
				v.ScrollBarImageTransparency = 1
				table.insert(transparenciesSec, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("TextBox") then
				table.insert(transparenciesSec, v.TextTransparency)
				v.TextTransparency = 1
				table.insert(transparenciesSec, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("ImageButton") then
				table.insert(transparenciesSec, v.ImageTransparency)
				v.ImageTransparency = 1
				table.insert(transparenciesSec, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("TextButton") then
				table.insert(transparenciesSec, v.TextTransparency)
				v.TextTransparency = 1
				table.insert(transparenciesSec, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("Frame") then
				table.insert(transparenciesSec, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			end
		end
		wait(tweentime)
		transparenciesmain = {}
		for i,v in pairs(from:GetDescendants()) do
		spawn(function()
			if v:IsA("ImageLabel") then
				table.insert(transparenciesmain, v.ImageTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1})
				tweenprop:Play()
				table.insert(transparenciesmain, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
				tweenprop:Play()
			elseif v:IsA("TextLabel") then
				table.insert(transparenciesmain, v.TextTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1})
				tweenprop:Play()
				table.insert(transparenciesmain, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
				tweenprop:Play()
			elseif v:IsA("ScrollingFrame") then
				table.insert(transparenciesmain, v.ScrollBarImageTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ScrollBarImageTransparency = 1})
				tweenprop:Play()
				table.insert(transparenciesmain, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
				tweenprop:Play()
			elseif v:IsA("TextBox") then
				table.insert(transparenciesmain, v.TextTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1})
				tweenprop:Play()
				table.insert(transparenciesmain, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
				tweenprop:Play()
			elseif v:IsA("ImageButton") then
				table.insert(transparenciesmain, v.ImageTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1})
				tweenprop:Play()
				table.insert(transparenciesmain, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
				tweenprop:Play()
			elseif v:IsA("TextButton") then
				table.insert(transparenciesmain, v.TextTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1})
				tweenprop:Play()
				table.insert(transparenciesmain, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
				tweenprop:Play()
			elseif v:IsA("Frame") then
				table.insert(transparenciesmain, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
				tweenprop:Play()
			end
		end)
		end
		local tweenprop = TweenService:Create(glowthing, TweenInfo.new(tweentime), {ImageTransparency = 0})
		tweenprop:Play()
		wait(tweentime)
		if from ~= game.CoreGui[guiname].Main then
			transcount = 0
			print("wtf")
			for i,v in pairs(from:GetDescendants()) do
				if v:IsA("ImageLabel") then
					transcount = transcount + 1
					v.ImageTransparency = transparenciesmain[transcount]
					transcount = transcount + 1
					v.BackgroundTransparency = transparenciesmain[transcount]
				elseif v:IsA("TextLabel") then
					transcount = transcount + 1
					v.TextTransparency = transparenciesmain[transcount]
					transcount = transcount + 1
					v.BackgroundTransparency = transparenciesmain[transcount]
				elseif v:IsA("ScrollingFrame") then
					transcount = transcount + 1
					v.ScrollBarImageTransparency = transparenciesmain[transcount]
					transcount = transcount + 1
					v.BackgroundTransparency = transparenciesmain[transcount]
				elseif v:IsA("TextBox") then
					transcount = transcount + 1
					v.TextTransparency = transparenciesmain[transcount]
					transcount = transcount + 1
					v.BackgroundTransparency = transparenciesmain[transcount]
				elseif v:IsA("ImageButton") then
					transcount = transcount + 1
					v.ImageTransparency = transparenciesmain[transcount]
					transcount = transcount + 1
					v.BackgroundTransparency = transparenciesmain[transcount]
				elseif v:IsA("TextButton") then
					transcount = transcount + 1
					v.TextTransparency = transparenciesmain[transcount]
					transcount = transcount + 1
					v.BackgroundTransparency = transparenciesmain[transcount]
				elseif v:IsA("Frame") then
					transcount = transcount + 1
					v.BackgroundTransparency = transparenciesmain[transcount]
				end
			end
		end
		mainGuiLastPos = from.Position
		_G.followdragcrates:Disconnect()
		--screenframe.Visible = false
		if ontosize ~= nil then
			local tweensize = TweenService:Create(from, TweenInfo.new(tweentime), {Size = ontosize})
			tweensize:Play()
			local tweensize2 = TweenService:Create(onto, TweenInfo.new(tweentime), {Size = ontosize})
			tweensize2:Play()
			wait(tweentime)
		end
		from.Visible = false
		onto.Visible = true
		transcount = 0
		for i,v in pairs(onto:GetDescendants()) do
			spawn(function()
			if v:IsA("ImageLabel") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = transparenciesSec[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
			elseif v:IsA("TextLabel") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesSec[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
			elseif v:IsA("ScrollingFrame") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ScrollBarImageTransparency = transparenciesSec[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
			elseif v:IsA("TextBox") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesSec[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
			elseif v:IsA("ImageButton") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = transparenciesSec[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
			elseif v:IsA("TextButton") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesSec[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
			elseif v:IsA("Frame") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
			end
		end)
		end
	end
	local function transitionBack(from, backto, backtosize, glowthing)
		from.Active = false
		backto.Active = true
		backto.AnchorPoint = Vector2.new(0,0)
		backto.Position = from.Position - UDim2.new(0,0,0,0)
		--screenframe.Visible = true
		--screenframe.Position = from.Position - UDim2.new(0,0,0,-20)
		_G.followdragcrates = from:GetPropertyChangedSignal("Position"):Connect(function(value)
			backto.AnchorPoint = Vector2.new(0,0)
			backto.Position = from.Position - UDim2.new(0,0,0,0)
			--screenframe.Position = from.Position - UDim2.new(0,0,0,-20)
		end)
		wait(tweentime)
		local transparenciesTemp = {}
		for i,v in pairs(from:GetDescendants()) do
			spawn(function()
			if v:IsA("ImageLabel") then
				table.insert(transparenciesTemp, v.ImageTransparency)
				if v.Image ~= "rbxassetid://5028857084" then
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1}); tweenprop:Play()
				end
				table.insert(transparenciesTemp, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
			elseif v:IsA("TextLabel") then
				table.insert(transparenciesTemp, v.TextTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1}); tweenprop:Play()
				table.insert(transparenciesTemp, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
			elseif v:IsA("ScrollingFrame") then
				table.insert(transparenciesTemp, v.ScrollBarImageTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ScrollBarImageTransparency = 1}); tweenprop:Play()
				table.insert(transparenciesTemp, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
			elseif v:IsA("TextBox") then
				table.insert(transparenciesTemp, v.TextTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1}); tweenprop:Play()
				table.insert(transparenciesTemp, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
			elseif v:IsA("ImageButton") then
				table.insert(transparenciesTemp, v.ImageTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1}); tweenprop:Play()
				table.insert(transparenciesTemp, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
			elseif v:IsA("TextButton") then
				table.insert(transparenciesTemp, v.TextTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1}); tweenprop:Play()
				table.insert(transparenciesTemp, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
			elseif v:IsA("Frame") then
				table.insert(transparenciesTemp, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
			end
		end)
		end
		wait(tweentime)
		if backtosize ~= nil then
			local tweensize = TweenService:Create(from, TweenInfo.new(tweentime), {Size = backtosize})
			tweensize:Play()
			local tweensize2 = TweenService:Create(backto, TweenInfo.new(tweentime), {Size = backtosize})
			tweensize2:Play()
			wait(tweentime)
		end
		from.Visible = false
	
		backto.Visible = true
	
		transcount = 0
		for i,v in pairs(backto:GetDescendants()) do
			spawn(function()
			if v:IsA("ImageLabel") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = transparenciesmain[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesmain[transcount]}); tweenprop:Play()
			elseif v:IsA("TextLabel") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesmain[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesmain[transcount]}); tweenprop:Play()
			elseif v:IsA("ScrollingFrame") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ScrollBarImageTransparency = transparenciesmain[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesmain[transcount]}); tweenprop:Play()
			elseif v:IsA("TextBox") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesmain[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesmain[transcount]}); tweenprop:Play()
			elseif v:IsA("ImageButton") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = transparenciesmain[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesmain[transcount]}); tweenprop:Play()
			elseif v:IsA("TextButton") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesmain[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesmain[transcount]}); tweenprop:Play()
			elseif v:IsA("Frame") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesmain[transcount]}); tweenprop:Play()
			end
			end)
		end
		local tweenprop = TweenService:Create(glowthing, TweenInfo.new(tweentime), {ImageTransparency = 1}); tweenprop:Play()
		
		wait(tweentime)
	
		local UserInputService = game:GetService("UserInputService")
		repeat wait() until UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) == false
		
		transcount = 0
		for i,v in pairs(from:GetDescendants()) do
			if v:IsA("ImageLabel") then
				transcount = transcount + 1
				v.ImageTransparency = transparenciesTemp[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesTemp[transcount]
			elseif v:IsA("TextLabel") then
				transcount = transcount + 1
				v.TextTransparency = transparenciesTemp[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesTemp[transcount]
			elseif v:IsA("ScrollingFrame") then
				transcount = transcount + 1
				v.ScrollBarImageTransparency = transparenciesTemp[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesTemp[transcount]
			elseif v:IsA("TextBox") then
				transcount = transcount + 1
				v.TextTransparency = transparenciesTemp[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesTemp[transcount]
			elseif v:IsA("ImageButton") then
				transcount = transcount + 1
				v.ImageTransparency = transparenciesTemp[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesTemp[transcount]
			elseif v:IsA("TextButton") then
				transcount = transcount + 1
				v.TextTransparency = transparenciesTemp[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesTemp[transcount]
			elseif v:IsA("Frame") then
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesTemp[transcount]
			end
		end
		_G.followdragcrates:Disconnect()
		--screenframe.Visible = false
	end
	local function transitionToWikiPg(from, onto, ontosize, glowthing) 
		from.Active = false
		onto.Active = true
		onto.AnchorPoint = Vector2.new(0,0)
		displacementThingy = 0
		screendisp = -20
		onto.Position = from.Position - UDim2.new(0,0,0,displacementThingy)
		--screenframe.Visible = true
		--screenframe.Position = from.Position - UDim2.new(0,0,0,screendisp)
		_G.followdragcrates = from:GetPropertyChangedSignal("Position"):Connect(function(value)
			onto.AnchorPoint = Vector2.new(0,0)
			onto.Position = from.Position - UDim2.new(0,0,0,displacementThingy)
			--screenframe.Position = from.Position - UDim2.new(0,0,0,screendisp)
		end)
		transparenciesSec = {}
		for i,v in pairs(onto:GetDescendants()) do
			if v:IsA("ImageLabel") then
				table.insert(transparenciesSec, v.ImageTransparency)
				v.ImageTransparency = 1
				table.insert(transparenciesSec, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("TextLabel") then
				table.insert(transparenciesSec, v.TextTransparency)
				v.TextTransparency = 1
				table.insert(transparenciesSec, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("ScrollingFrame") then
				table.insert(transparenciesSec, v.ScrollBarImageTransparency)
				v.ScrollBarImageTransparency = 1
				table.insert(transparenciesSec, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("TextBox") then
				table.insert(transparenciesSec, v.TextTransparency)
				v.TextTransparency = 1
				table.insert(transparenciesSec, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("ImageButton") then
				table.insert(transparenciesSec, v.ImageTransparency)
				v.ImageTransparency = 1
				table.insert(transparenciesSec, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("TextButton") then
				table.insert(transparenciesSec, v.TextTransparency)
				v.TextTransparency = 1
				table.insert(transparenciesSec, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("Frame") then
				table.insert(transparenciesSec, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			end
		end
		wait(tweentime)
		local transparenciesWS = {}
		for i,v in pairs(from:GetDescendants()) do
			if v:IsA("ImageLabel") then
				table.insert(transparenciesWS, v.ImageTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1})
				tweenprop:Play()
				table.insert(transparenciesWS, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
				tweenprop:Play()
			elseif v:IsA("TextLabel") then
				table.insert(transparenciesWS, v.TextTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1})
				tweenprop:Play()
				table.insert(transparenciesWS, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
				tweenprop:Play()
			elseif v:IsA("ScrollingFrame") then
				table.insert(transparenciesWS, v.ScrollBarImageTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ScrollBarImageTransparency = 1})
				tweenprop:Play()
				table.insert(transparenciesWS, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
				tweenprop:Play()
			elseif v:IsA("TextBox") then
				table.insert(transparenciesWS, v.TextTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1})
				tweenprop:Play()
				table.insert(transparenciesWS, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
				tweenprop:Play()
			elseif v:IsA("ImageButton") then
				table.insert(transparenciesWS, v.ImageTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1})
				tweenprop:Play()
				table.insert(transparenciesWS, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
				tweenprop:Play()
			elseif v:IsA("TextButton") then
				table.insert(transparenciesWS, v.TextTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1})
				tweenprop:Play()
				table.insert(transparenciesWS, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
				tweenprop:Play()
			elseif v:IsA("Frame") then
				table.insert(transparenciesWS, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
				tweenprop:Play()
			end
		end
		local tweenprop = TweenService:Create(glowthing, TweenInfo.new(tweentime), {ImageTransparency = 0})
		tweenprop:Play()
		wait(tweentime)
		from.Visible = false
		onto.Visible = true
		transcount = 0
		for i,v in pairs(from:GetDescendants()) do
			if v:IsA("ImageLabel") then
				transcount = transcount + 1
				v.ImageTransparency = transparenciesWS[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesWS[transcount]
			elseif v:IsA("TextLabel") then
				transcount = transcount + 1
				v.TextTransparency = transparenciesWS[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesWS[transcount]
			elseif v:IsA("ScrollingFrame") then
				transcount = transcount + 1
				v.ScrollBarImageTransparency = transparenciesWS[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesWS[transcount]
			elseif v:IsA("TextBox") then
				transcount = transcount + 1
				v.TextTransparency = transparenciesWS[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesWS[transcount]
			elseif v:IsA("ImageButton") then
				transcount = transcount + 1
				v.ImageTransparency = transparenciesWS[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesWS[transcount]
			elseif v:IsA("TextButton") then
				transcount = transcount + 1
				v.TextTransparency = transparenciesWS[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesWS[transcount]
			elseif v:IsA("Frame") then
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesWS[transcount]
			end
		end
		mainGuiLastPos = from.Position
		_G.followdragcrates:Disconnect()
		--screenframe.Visible = false
		if ontosize ~= nil then
			local tweensize = TweenService:Create(onto, TweenInfo.new(tweentime), {Size = ontosize})
			tweensize:Play()
			wait(tweentime)
		end
	
		transcount = 0
		for i,v in pairs(onto:GetDescendants()) do
			spawn(function()
			if v:IsA("ImageLabel") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = transparenciesSec[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
			elseif v:IsA("TextLabel") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesSec[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
			elseif v:IsA("ScrollingFrame") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ScrollBarImageTransparency = transparenciesSec[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
			elseif v:IsA("TextBox") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesSec[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
			elseif v:IsA("ImageButton") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = transparenciesSec[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
			elseif v:IsA("TextButton") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesSec[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
			elseif v:IsA("Frame") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
			end
		end)
		end
	end
	local function transitionUnder(from, backto, backtosize, glowthing)
		from.Active = false
		backto.Active = true
		backto.AnchorPoint = Vector2.new(0,0)
		backto.Position = from.Position
		--screenframe.Visible = true
		--screenframe.Position = from.Position - UDim2.new(0,0,0,-20)
		_G.followdragcrates = from:GetPropertyChangedSignal("Position"):Connect(function(value)
			backto.AnchorPoint = Vector2.new(0,0)
			backto.Position = from.Position
			--screenframe.Position = from.Position - UDim2.new(0,0,0,-20)
		end)
		wait(tweentime)
		local transparenciesTemp = {}
		for i,v in pairs(from:GetDescendants()) do
			spawn(function()
			if v:IsA("ImageLabel") then
				table.insert(transparenciesTemp, v.ImageTransparency)
				if v.Image ~= "rbxassetid://5028857084" then
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1}); tweenprop:Play()
				end
				table.insert(transparenciesTemp, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
			elseif v:IsA("TextLabel") then
				table.insert(transparenciesTemp, v.TextTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1}); tweenprop:Play()
				table.insert(transparenciesTemp, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
			elseif v:IsA("ScrollingFrame") then
				table.insert(transparenciesTemp, v.ScrollBarImageTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ScrollBarImageTransparency = 1}); tweenprop:Play()
				table.insert(transparenciesTemp, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
			elseif v:IsA("TextBox") then
				table.insert(transparenciesTemp, v.TextTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1}); tweenprop:Play()
				table.insert(transparenciesTemp, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
			elseif v:IsA("ImageButton") then
				table.insert(transparenciesTemp, v.ImageTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1}); tweenprop:Play()
				table.insert(transparenciesTemp, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
			elseif v:IsA("TextButton") then
				table.insert(transparenciesTemp, v.TextTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1}); tweenprop:Play()
				table.insert(transparenciesTemp, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
			elseif v:IsA("Frame") then
				table.insert(transparenciesTemp, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
			elseif v:IsA("ViewportFrame") then
				table.insert(transparenciesTemp, v.ImageTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1}); tweenprop:Play()
				table.insert(transparenciesTemp, v.BackgroundTransparency)
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
			end
		end)
		end
		wait(tweentime)
		if backtosize ~= nil then
			local tweensize = TweenService:Create(from, TweenInfo.new(tweentime), {Size = backtosize})
			tweensize:Play()
			wait(tweentime)
		end
		local transparenciesUnder = {}
		for i,v in pairs(backto:GetDescendants()) do
			if v:IsA("ImageLabel") then
				table.insert(transparenciesUnder, v.ImageTransparency)
				v.ImageTransparency = 1
				table.insert(transparenciesUnder, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("TextLabel") then
				table.insert(transparenciesUnder, v.TextTransparency)
				v.TextTransparency = 1
				table.insert(transparenciesUnder, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("ScrollingFrame") then
				table.insert(transparenciesUnder, v.ScrollBarImageTransparency)
				v.ScrollBarImageTransparency = 1
				table.insert(transparenciesUnder, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("TextBox") then
				table.insert(transparenciesUnder, v.TextTransparency)
				v.TextTransparency = 1
				table.insert(transparenciesUnder, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("ImageButton") then
				table.insert(transparenciesUnder, v.ImageTransparency)
				v.ImageTransparency = 1
				table.insert(transparenciesUnder, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("TextButton") then
				table.insert(transparenciesUnder, v.TextTransparency)
				v.TextTransparency = 1
				table.insert(transparenciesUnder, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			elseif v:IsA("Frame") then
				table.insert(transparenciesUnder, v.BackgroundTransparency)
				v.BackgroundTransparency = 1
			end
		end
		backto.Visible = true
		transcount = 0
		for i,v in pairs(backto:GetDescendants()) do
			spawn(function()
			if v:IsA("ImageLabel") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
			elseif v:IsA("TextLabel") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
			elseif v:IsA("ScrollingFrame") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ScrollBarImageTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
			elseif v:IsA("TextBox") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
			elseif v:IsA("ImageButton") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
			elseif v:IsA("TextButton") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
			elseif v:IsA("Frame") then
				transcount = transcount + 1
				local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
			end
		end)
		end
		local tweenprop = TweenService:Create(glowthing, TweenInfo.new(tweentime), {ImageTransparency = 1}); tweenprop:Play()
		wait(tweentime)
		
		local UserInputService = game:GetService("UserInputService")
		repeat wait() until UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) == false
		from.Visible = false
		transcount = 0
		for i,v in pairs(from:GetDescendants()) do
			if v:IsA("ImageLabel") then
				transcount = transcount + 1
				v.ImageTransparency = transparenciesTemp[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesTemp[transcount]
			elseif v:IsA("TextLabel") then
				transcount = transcount + 1
				v.TextTransparency = transparenciesTemp[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesTemp[transcount]
			elseif v:IsA("ScrollingFrame") then
				transcount = transcount + 1
				v.ScrollBarImageTransparency = transparenciesTemp[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesTemp[transcount]
			elseif v:IsA("TextBox") then
				transcount = transcount + 1
				v.TextTransparency = transparenciesTemp[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesTemp[transcount]
			elseif v:IsA("ImageButton") then
				transcount = transcount + 1
				v.ImageTransparency = transparenciesTemp[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesTemp[transcount]
			elseif v:IsA("TextButton") then
				transcount = transcount + 1
				v.TextTransparency = transparenciesTemp[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesTemp[transcount]
			elseif v:IsA("Frame") then
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesTemp[transcount]
			elseif v:IsA("ViewportFrame") then
				transcount = transcount + 1
				v.ImageTransparency = transparenciesTemp[transcount]
				transcount = transcount + 1
				v.BackgroundTransparency = transparenciesTemp[transcount]
			end
		end
		_G.followdragcrates:Disconnect()
		--screenframe.Visible = false
	end

	local TweenService = game:GetService("TweenService")
	local AutoSalvageGUI = Instance.new("ScreenGui")
	local autosalvage = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local salvagetopbar = Instance.new("ImageLabel")
	local TextLabelTB = Instance.new("TextLabel")
	local salvageglow = Instance.new("ImageLabel")

	AutoSalvageGUI.Name = "Auto Salvage"
	AutoSalvageGUI.Parent = game.CoreGui
	AutoSalvageGUI.Enabled = true

	autosalvage.Name = "autosalvage"
	autosalvage.Parent = AutoSalvageGUI
	autosalvage.BackgroundColor3 = stringtocolor(SettingsT.Background)
	autosalvage.BorderSizePixel = 0
	autosalvage.Position = UDim2.new(0.5,0,0.5,0)
	autosalvage.Size = UDim2.new(0, 671, 0, 415)
	autosalvage.Active = true
	autosalvage.Draggable = true
	autosalvage.Visible = false

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = autosalvage

	salvagetopbar.Name = "topbar"
	salvagetopbar.Parent = autosalvage
	salvagetopbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	salvagetopbar.BackgroundTransparency = 1.000
	salvagetopbar.Size = UDim2.new(1, 0, 0, 38)
	salvagetopbar.Image = "rbxassetid://4595286933"
	salvagetopbar.ImageColor3 = stringtocolor(SettingsT.DarkContrast)
	salvagetopbar.ScaleType = Enum.ScaleType.Slice
	salvagetopbar.SliceCenter = Rect.new(4, 4, 296, 296)

	TextLabelTB.Parent = salvagetopbar
	TextLabelTB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabelTB.BackgroundTransparency = 1.000
	TextLabelTB.Size = UDim2.new(0, 671, 0, 38)
	TextLabelTB.Font = Enum.Font.Jura
	TextLabelTB.Text = "Auto Salvage"
	TextLabelTB.TextColor3 = stringtocolor(SettingsT.TextColor)
	TextLabelTB.TextSize = 18.000

	salvageglow = Instance.new("ImageLabel")
	salvageglow.Name = "Glow"
	salvageglow.BackgroundTransparency = 1
	salvageglow.Position = UDim2.new(0, -15, 0, -15)
	salvageglow.Size = UDim2.new(1, 30, 1, 30)
	salvageglow.ZIndex = 0
	salvageglow.Image = "rbxassetid://5028857084"
	salvageglow.ImageColor3 = stringtocolor(SettingsT.Glow)
	salvageglow.ScaleType = Enum.ScaleType.Slice
	salvageglow.SliceCenter = Rect.new(24, 24, 276, 276)
	salvageglow.Parent = autosalvage

	local backsalvage = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local selectall = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local search = Instance.new("TextBox")
	local UICorner_3 = Instance.new("UICorner")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local UIPadding = Instance.new("UIPadding")
	local SalvageTheItems = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")

	backsalvage.Name = "backsalvage"
	backsalvage.Parent = autosalvage
	backsalvage.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
	backsalvage.Position = UDim2.new(0.0178837553, 0, 0.110843375, 0)
	backsalvage.Size = UDim2.new(0, 57, 0, 22)
	backsalvage.AutoButtonColor = false
	backsalvage.Font = Enum.Font.Jura
	backsalvage.Text = "Back"
	backsalvage.TextColor3 = stringtocolor(SettingsT.TextColor)
	backsalvage.TextSize = 14.000

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = backsalvage

	backsalvage.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(backsalvage, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3})
		tweentrans:Play()
	end)

	backsalvage.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(backsalvage, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0})
		tweentrans:Play()
	end)

	backsalvage.MouseButton1Click:Connect(function()
		transitionBack(autosalvage, game.CoreGui["Ironic's Miner's Haven Ghost Client - v"..SettingsV.ScriptVersion].Main, nil, salvageglow)
	end)

	selectall.Name = "selectall"
	selectall.Parent = autosalvage
	selectall.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
	selectall.Position = UDim2.new(0.138599113, 0, 0.110843375, 0)
	selectall.Size = UDim2.new(0, 84, 0, 22)
	selectall.AutoButtonColor = false
	selectall.Font = Enum.Font.Jura
	selectall.Text = "Select All"
	selectall.TextColor3 = stringtocolor(SettingsT.TextColor)
	selectall.TextSize = 14.000

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = selectall

	local _2ndinfo = Instance.new("TextLabel")
	local UICornerinfo = Instance.new("UICorner")
	local UIPaddinginfo = Instance.new("UIPadding")

	_2ndinfo.Name = "2ndinfo"
	_2ndinfo.Parent = selectall
	_2ndinfo.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
	_2ndinfo.Position = UDim2.new(-0.691179574, 0, -1.4545455, 0)
	_2ndinfo.Size = UDim2.new(0, 199, 0, 24)
	_2ndinfo.Font = Enum.Font.Jura
	_2ndinfo.Text = "Shift + Click To Deselect All"
	_2ndinfo.TextColor3 = stringtocolor(SettingsT.TextColor)
	_2ndinfo.TextSize = 14.000
	_2ndinfo.TextWrapped = true
	_2ndinfo.Visible = false

	UICornerinfo.CornerRadius = UDim.new(0, 5)
	UICornerinfo.Name = "UICornerinfo"
	UICornerinfo.Parent = _2ndinfo

	UIPaddinginfo.Name = "UIPaddinginfo"
	UIPaddinginfo.Parent = _2ndinfo
	UIPaddinginfo.PaddingLeft = UDim.new(0, 5)
	UIPaddinginfo.PaddingRight = UDim.new(0, 5)

	selectall.MouseEnter:Connect(function()
		_2ndinfo.Visible = true
		local tweentrans = TweenService:Create(selectall, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3})
		tweentrans:Play()
	end)

	selectall.MouseLeave:Connect(function()
		_2ndinfo.Visible = false
		local tweentrans = TweenService:Create(selectall, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0})
		tweentrans:Play()
	end)

	search.Name = "search"
	search.Parent = autosalvage
	search.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
	search.Position = UDim2.new(0.296572268, 0, 0.110843375, 0)
	search.Size = UDim2.new(0, 453, 0, 22)
	search.Font = Enum.Font.Jura
	search.PlaceholderColor3 = stringtocolor(SettingsT.TextColor)
	search.PlaceholderText = "Search..."
	search.Text = ""
	search.TextColor3 = stringtocolor(SettingsT.TextColor)
	search.TextScaled = true
	search.TextSize = 14.000
	search.TextWrapped = true
	search.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_3.Parent = search

	UITextSizeConstraint.Parent = search
	UITextSizeConstraint.MaxTextSize = 15

	UIPadding.Parent = search
	UIPadding.PaddingLeft = UDim.new(0, 10)

	SalvageTheItems.Name = "Salvage The Items!"
	SalvageTheItems.Parent = autosalvage
	SalvageTheItems.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
	SalvageTheItems.Position = UDim2.new(0.0178837553, 0, 0.180722892, 0)
	SalvageTheItems.Size = UDim2.new(0, 639, 0, 35)
	SalvageTheItems.AutoButtonColor = false
	SalvageTheItems.Font = Enum.Font.Jura
	SalvageTheItems.Text = "Salvage The Items!"
	SalvageTheItems.TextColor3 = stringtocolor(SettingsT.TextColor)
	SalvageTheItems.TextSize = 14.000

	UICorner_4.CornerRadius = UDim.new(0, 5)
	UICorner_4.Parent = SalvageTheItems

	SalvageTheItems.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(SalvageTheItems, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3})
		tweentrans:Play()
	end)

	SalvageTheItems.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(SalvageTheItems, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0})
		tweentrans:Play()
	end)

	local salvagescroll = Instance.new("ScrollingFrame")
	local UIGridLayoutScroll = Instance.new("UIGridLayout")
	local UIPaddingScroll = Instance.new("UIPadding")

	salvagescroll.Name = "salvagescroll"
	salvagescroll.Parent = autosalvage
	salvagescroll.Active = true
	salvagescroll.BackgroundColor3 = stringtocolor(SettingsT.Background)
	salvagescroll.BackgroundTransparency = 1.000
	salvagescroll.BorderColor3 = Color3.fromRGB(27, 42, 53)
	salvagescroll.BorderSizePixel = 0
	salvagescroll.Position = UDim2.new(0.00894187763, 0, 0.279518068, 0)
	salvagescroll.Size = UDim2.new(0, 659, 0, 292)
	salvagescroll.ScrollBarThickness = 3
	salvagescroll.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
	salvagescroll.AutomaticCanvasSize = Enum.AutomaticSize.Y

	UIGridLayoutScroll.Parent = salvagescroll
	UIGridLayoutScroll.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayoutScroll.CellPadding = UDim2.new(0, 10, 0, 5)
	UIGridLayoutScroll.CellSize = UDim2.new(0, 120, 0, 150)

	UIPaddingScroll.Parent = salvagescroll
	UIPaddingScroll.PaddingLeft = UDim.new(0, 6)

	for i,v in pairs(game.ReplicatedStorage.Items:GetChildren()) do
		if v:FindFirstChild("ShardSalvagePrice") then
			local Frame = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local ItemButtonSalvage = Instance.new("ImageButton")
			local UICorner_3 = Instance.new("UICorner")
			local TextLabel = Instance.new("TextLabel")
			local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
			local UICorner_4 = Instance.new("UICorner")
		
			Frame.Parent = salvagescroll
			Frame.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
			Frame.Size = UDim2.new(0, 106, 0, 125)
			Frame.Name = v.Name
		
			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = Frame
		
			ItemButtonSalvage.Parent = Frame
			ItemButtonSalvage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ItemButtonSalvage.BackgroundTransparency = 1.000
			ItemButtonSalvage.Position = UDim2.new(0.0419999994, 0, 0, 5)
			ItemButtonSalvage.Size = UDim2.new(0, 110, 0, 110)
			ItemButtonSalvage.Image = "rbxassetid://" .. v.ThumbnailId.Value
			ItemButtonSalvage.AutoButtonColor = false
		
			UICorner_3.CornerRadius = UDim.new(0, 5)
			UICorner_3.Parent = ItemButtonSalvage
		
			TextLabel.Parent = ItemButtonSalvage
			TextLabel.BackgroundColor3 = stringtocolor(SettingsT.Background)
			TextLabel.BackgroundTransparency = 1
			TextLabel.Size = UDim2.new(0, 110, 0, 110)
			TextLabel.Font = Enum.Font.Nunito
			TextLabel.Text = v.Name
			TextLabel.TextColor3 = stringtocolor(SettingsT.TextColor)
			TextLabel.TextScaled = true
			TextLabel.TextSize = 1.000
			TextLabel.TextWrapped = true
			TextLabel.TextTransparency = 1
		
			UITextSizeConstraint.Parent = TextLabel
			UITextSizeConstraint.MaxTextSize = 30
		
			UICorner_4.CornerRadius = UDim.new(0, 5)
			UICorner_4.Parent = TextLabel
		
			local KeepLabel = Instance.new("TextLabel")
		
			KeepLabel.Name = "KeepLabel"
			KeepLabel.Parent = Frame
			KeepLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			KeepLabel.BackgroundTransparency = 1.000
			KeepLabel.Position = UDim2.new(0, 0, 0.813333333, 0)
			KeepLabel.Size = UDim2.new(0, 75, 0, 19)
			KeepLabel.Font = Enum.Font.Jura
			KeepLabel.Text = "Keep:"
			KeepLabel.TextColor3 = stringtocolor(SettingsT.TextColor)
			KeepLabel.TextScaled = true
			KeepLabel.TextSize = 14.000
			KeepLabel.TextWrapped = true
		
			local AmtInput = Instance.new("TextBox")
			local UICornerForAmt = Instance.new("UICorner")
		
			AmtInput.Parent = Frame
			AmtInput.BackgroundColor3 = stringtocolor(SettingsT.Background)
			AmtInput.BorderColor3 = Color3.fromRGB(255, 255, 255)
			AmtInput.BorderSizePixel = 0
			AmtInput.Position = UDim2.new(0.574999988, 0, 0.813000083, 1)
			AmtInput.Size = UDim2.new(0, 36, 0, 19)
			AmtInput.Font = Enum.Font.Jura
			AmtInput.PlaceholderColor3 = stringtocolor(SettingsT.TextColor)
			AmtInput.PlaceholderText = "#"
			AmtInput.Text = "1"
			AmtInput.TextColor3 = stringtocolor(SettingsT.TextColor)
			AmtInput.TextScaled = true
			AmtInput.TextSize = 14.000
			AmtInput.TextWrapped = true
		
			UICornerForAmt.CornerRadius = UDim.new(0, 5)
			UICornerForAmt.Parent = AmtInput
		
			ItemButtonSalvage.MouseEnter:Connect(function(value)
				local tweenoverlay = TweenService:Create(TextLabel, TweenInfo.new(0.5), {BackgroundTransparency = 0.4, TextTransparency = 0.4})
				tweenoverlay:Play()
			end)
		
			ItemButtonSalvage.MouseLeave:Connect(function(value)
				local tweenoverlay = TweenService:Create(TextLabel, TweenInfo.new(0.5), {BackgroundTransparency = 1, TextTransparency = 1})
				tweenoverlay:Play()
			end)
		
			ItemButtonSalvage.MouseButton1Click:Connect(function(value)
				if Frame.BackgroundColor3 == stringtocolor(SettingsT.DarkContrast) then
					local tweencolor = TweenService:Create(Frame, TweenInfo.new(0.5), {BackgroundColor3 = Color3.fromRGB(158, 255, 158)})
					tweencolor:Play()
					local tweencolor = TweenService:Create(KeepLabel, TweenInfo.new(0.5), {TextColor3 = stringtocolor(SettingsT.DarkContrast)})
					tweencolor:Play()
					selectedSalvages[Frame.Name] = tonumber(AmtInput.Text)
				elseif Frame.BackgroundColor3 == Color3.fromRGB(158, 255, 158) then
					local tweencolor = TweenService:Create(Frame, TweenInfo.new(0.5), {BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)})
					tweencolor:Play()
					local tweencolor = TweenService:Create(KeepLabel, TweenInfo.new(0.5), {TextColor3 = stringtocolor(SettingsT.TextColor)})
					tweencolor:Play()
					selectedSalvages[Frame.Name] = nil
					spawn(function()
						wait(0.5)
						Frame.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
					end)
				end
			end)
			local ognumber = 1
			AmtInput.FocusLost:Connect(function(value)
				if value then
					if tonumber(AmtInput.Text) == nil then
						mh:Notify("Error!", "That Is Not a Valid Number.")
						AmtInput.Text = ognumber
						return
					end
					if selectedSalvages[v.Name] ~= nil then
						selectedSalvages[v.Name] = tonumber(AmtInput.Text)
					end
					ognumber = tonumber(AmtInput.Text)
				end
			end)
		end
	end

	selectall.MouseButton1Click:Connect(function(value)
		local UserInputService = game:GetService("UserInputService")
		if not UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) and not UserInputService:IsKeyDown(Enum.KeyCode.RightShift) then
		for i,v in pairs(salvagescroll:GetChildren()) do
			if v:IsA("Frame") then
				if selectedSalvages[v.Name] == nil then
					selectedSalvages[v.Name] = tonumber(v.TextBox.Text)
				end
				local tweencolor = TweenService:Create(v, TweenInfo.new(0.5), {BackgroundColor3 = Color3.fromRGB(158, 255, 158)})
				tweencolor:Play()
				local tweencolor = TweenService:Create(v.KeepLabel, TweenInfo.new(0.5), {TextColor3 = stringtocolor(SettingsT.DarkContrast)})
				tweencolor:Play()
			end
		end
		else
			selectedSalvages = {}
			for i,v in pairs(salvagescroll:GetChildren()) do
				if v:IsA("Frame") then
					local tweencolor = TweenService:Create(v, TweenInfo.new(0.5), {BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)})
					tweencolor:Play()
					local tweencolor = TweenService:Create(v.KeepLabel, TweenInfo.new(0.5), {TextColor3 = stringtocolor(SettingsT.TextColor)})
					tweencolor:Play()
					spawn(function()
						wait(0.5)
						v.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
					end)
				end
			end
		end
	end)

	search.Changed:Connect(function(value)
		if value == "Text" then
			for i,v in pairs(salvagescroll:GetChildren()) do
				if v:IsA("Frame") then
					local item = string.lower(v.Name)
					local searched = string.lower(search.Text)
					if string.find(item, searched) then
						v.Visible = true
					else
						v.Visible = false
					end
				end
			end
		end
	end)

	function itemhas(ID)
		local hasamount
		RS.FetchInventory:InvokeServer()
		for i,v in next, game.Players.LocalPlayer.PlayerGui.GUI.Inventory.Frame.Items:GetChildren() do
			if v:IsA("TextButton") and v.Visible == true then
				if v.ItemId.Value == ID then 
					-- string.sub(text, 2) -- removes the first digit
					hasamount = string.sub(v.Amount.Text, 2)
				end
			end
		end
		return hasamount
	end

	SalvageTheItems.MouseButton1Click:Connect(function(value)
		for i,v in pairs(selectedSalvages) do
			coroutine.wrap(function()
				local itemid = game.ReplicatedStorage.Items[i].ItemId.Value
				local amountOwned = itemhas(itemid)
				local amountToSalvage = amountOwned - v
				if amountToSalvage > 99 then
					local timesToLoop = math.floor(amountToSalvage / 99)
					for i=1, timesToLoop do
						coroutine.wrap(function()
							game.ReplicatedStorage.CraftsmanEvents:InvokeServer("type:salvage", itemid, 99)
						end)()
					end
					game.ReplicatedStorage.CraftsmanEvents:InvokeServer("type:salvage", itemid, amountToSalvage - (timesToLoop * 99))
				elseif amountToSalvage <= 99 then
					game.ReplicatedStorage.CraftsmanEvents:InvokeServer("type:salvage", itemid, amountToSalvage)
				end
			end)()
		end
	end)
