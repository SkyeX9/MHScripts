local TweenService = game:GetService("TweenService")
local RS = game:GetService("ReplicatedStorage")
local MoneyLib = require(RS.MoneyLib)
local tweentime = 0.5
local SettingsT = game:service'HttpService':JSONDecode(readfile("Ironic Hub/Miners Haven/Theme.Ironic"))
local SettingsS = game:service'HttpService':JSONDecode(readfile("Ironic Hub/Miners Haven/Options.Ironic"))
local UserInputService = game:GetService("UserInputService")

local guiname = "Ironic's Miner's Haven Ghost Client - v"..DefaultSettingsT.ScriptVersion
local wikiguiname = "In-game Wiki"

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

wikiscreenGui = Instance.new("ScreenGui")
		wikiscreenGui.IgnoreGuiInset = true
		wikiscreenGui.Parent = game:GetService("CoreGui")
		wikiscreenGui.Name = "In-game Wiki"

		local wikiframe = Instance.new("ImageLabel")
		wikiframe.Image = "rbxassetid://4641149554"
		wikiframe.Size = UDim2.new(0,671.5,0,415)
		wikiframe.AnchorPoint = Vector2.new(0.5,0.5)
		wikiframe.Position = UDim2.new(0.5,0,0.5,0)
		wikiframe.ImageColor3 = stringtocolor(SettingsT.Background)
		wikiframe.BackgroundTransparency = 1
		wikiframe.ScaleType = "Slice"
		wikiframe.SliceCenter = Rect.new(4,4,296,296)
		wikiframe.BorderSizePixel = 0
		wikiframe.Parent = wikiscreenGui
		wikiframe.Name = "Upgraders"
		wikiframe.Visible = false
		wikiframe.Active = true
		wikiframe.Draggable = true

		wikiglow = Instance.new("ImageLabel")
		wikiglow.Name = "Glow"
		wikiglow.BackgroundTransparency = 1
		wikiglow.Position = UDim2.new(0, -15, 0, -15)
		wikiglow.Size = UDim2.new(1, 30, 1, 30)
		wikiglow.ZIndex = 0
		wikiglow.Image = "rbxassetid://5028857084"
		wikiglow.ImageTransparency = 0
		wikiglow.ImageColor3 = stringtocolor(SettingsT.Glow)
		wikiglow.ScaleType = Enum.ScaleType.Slice
		wikiglow.SliceCenter = Rect.new(24, 24, 276, 276)
		wikiglow.Parent = wikiframe
		wikiglow.ZIndex = 1

		wikitopbar = Instance.new("ImageLabel")
		wikitopbar.Image = "rbxassetid://4595286933"
		wikitopbar.Size = UDim2.new(1,0,0,38)
		wikitopbar.Position = UDim2.new(0,0,0,0)
		wikitopbar.ImageColor3 = stringtocolor(SettingsT.DarkContrast)
		wikitopbar.BackgroundTransparency = 1
		wikitopbar.ScaleType = "Slice"
		wikitopbar.SliceCenter = Rect.new(4,4,296,296)
		wikitopbar.BorderSizePixel = 0
		wikitopbar.Parent = wikiframe

		topbarwikitext = Instance.new("TextLabel")
		topbarwikitext.Font = Enum.Font.Jura
		topbarwikitext.BackgroundTransparency = 1
		topbarwikitext.Size = UDim2.new(1,0,0,38)
		topbarwikitext.Position = UDim2.new(0,0,0,0)
		topbarwikitext.Parent = wikitopbar
		topbarwikitext.Text = "Vulcan's Wrath"
		topbarwikitext.TextColor3 = stringtocolor(SettingsT.TextColor)
		topbarwikitext.TextSize = 18

		viewcam = Instance.new("Camera")
		viewcam.Parent = wikiscreenGui

		viewport = Instance.new("ViewportFrame")
		viewport.Parent = wikiframe
		viewport.Size = UDim2.new(0,375,0,300)
		viewport.Position = UDim2.new(0,4,0,38)
		viewport.BackgroundColor3 = stringtocolor(SettingsT.Background)
		viewport.BorderSizePixel = 4
		viewport.BorderColor3 = stringtocolor(SettingsT.DarkContrast)
		viewport.BackgroundTransparency = 0
		viewport.CurrentCamera = wikiscreenGui.Camera

		backwiki = Instance.new("TextButton")
		backwiki.Parent = viewport
		backwiki.Text = "Back"
		backwiki.TextSize = 14
		backwiki.TextColor3 = stringtocolor(SettingsT.TextColor)
		backwiki.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		backwiki.BackgroundTransparency = 0
		backwiki.TextTransparency = 0
		backwiki.AutoButtonColor = false
		backwiki.Position = UDim2.new(0.027,0,0.033,0)
		backwiki.Size = UDim2.new(0,60,0,26)
		backwiki.Font = Enum.Font.Jura

		backwiki.MouseEnter:Connect(function()
		    local tweentrans = TweenService:Create(backwiki, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3})
		    tweentrans:Play()
		end)

		backwiki.MouseLeave:Connect(function()
		    local tweentrans = TweenService:Create(backwiki, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0})
		    tweentrans:Play()
		end)

		backwikicorn = Instance.new("UICorner")
		backwikicorn.Parent = backwiki

		shinywiki = Instance.new("TextButton")
		shinywiki.Parent = viewport
		shinywiki.Text = "Shiny"
		shinywiki.TextSize = 14
		shinywiki.TextColor3 = stringtocolor(SettingsT.TextColor)
		shinywiki.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		shinywiki.BackgroundTransparency = 0
		shinywiki.TextTransparency = 0
		shinywiki.AutoButtonColor = false
		shinywiki.Position = UDim2.new(0.815,0,0.033,0)
		shinywiki.Size = UDim2.new(0,60,0,26)
		shinywiki.Font = Enum.Font.Jura
		shinywiki.Visible = false

		shinywiki.MouseEnter:Connect(function()
		    local tweentrans = TweenService:Create(shinywiki, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3})
		    tweentrans:Play()
		end)

		shinywiki.MouseLeave:Connect(function()
		    local tweentrans = TweenService:Create(shinywiki, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0})
		    tweentrans:Play()
		end)

		shinywikicorn = Instance.new("UICorner")
		shinywikicorn.Parent = shinywiki

		tierlabel = Instance.new("TextLabel")
		tierlabel.Parent = wikiframe
		tierlabel.Size = UDim2.new(0,375,0,49)
		tierlabel.Position = UDim2.new(0.009,0,0.848,0)
		tierlabel.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		tierlabel.TextColor3 = stringtocolor(SettingsT.TextColor)
		tierlabel.Font = Enum.Font.Jura
		tierlabel.TextSize = 18
		tierlabel.Text = "placeholder"

		tiercorner = Instance.new("UICorner")
		tiercorner.Parent = tierlabel

		local masterscroll = Instance.new("ScrollingFrame")
		masterscroll.BackgroundColor3 = stringtocolor(SettingsT.Background)
		masterscroll.BackgroundTransparency = 1
		masterscroll.BorderSizePixel = 0
		masterscroll.Parent = wikiframe
		masterscroll.Position = UDim2.new(0.574,-4,0.116,0)
		masterscroll.Size = UDim2.new(0,284,0,353)
		--masterscroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
		masterscroll.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		masterscroll.ScrollingDirection = "Y"
		masterscroll.ScrollBarThickness = 3
		masterscroll.CanvasSize = UDim2.new(0,0,0,0)
		masterscroll.Name = "masterscroll"

		masterlayout = Instance.new("UIListLayout")
		masterlayout.Parent = masterscroll
		masterlayout.Padding = UDim.new(0,7.5)
		masterlayout.HorizontalAlignment = "Center"
		masterlayout.SortOrder = "LayoutOrder"

		effectstab = Instance.new("TextLabel")
		effectstab.Parent = masterscroll
		effectstab.Size = UDim2.new(0,214,0,27)
		effectstab.Position = UDim2.new(0.085,0,-0.001,0)
		effectstab.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		effectstab.TextColor3 = stringtocolor(SettingsT.TextColor)
		effectstab.Font = Enum.Font.Jura
		effectstab.TextSize = 18
		effectstab.LayoutOrder = 0
		effectstab.Text = "Effects"

		effectscorn = Instance.new("UICorner")
		effectscorn.Parent = effectstab

		sfeffects = Instance.new("ScrollingFrame")
		sfeffects.BackgroundColor3 = stringtocolor(SettingsT.Background)
		sfeffects.BorderSizePixel = 0
		sfeffects.Parent = masterscroll
		sfeffects.Position = UDim2.new(0.085,0,0.098,0)
		sfeffects.AutomaticCanvasSize = Enum.AutomaticSize.Y
		sfeffects.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		sfeffects.ScrollingDirection = "Y"
		sfeffects.ScrollBarThickness = 3
		sfeffects.AutomaticSize = Enum.AutomaticSize.Y
		sfeffects.Size = UDim2.new(0,214,0,102)
		sfeffects.CanvasSize = UDim2.new(0,0,0,0)
		sfeffects.Name = "ScrollingEffects"

		effectsTxt = Instance.new("TextLabel")
		effectsTxt.Parent = sfeffects
		effectsTxt.Size = UDim2.new(0,207,0,0)
		effectsTxt.AutomaticSize = Enum.AutomaticSize.Y
		effectsTxt.Position = UDim2.new(0,0,0,0)
		effectsTxt.BackgroundTransparency = 1
		effectsTxt.TextColor3 = stringtocolor(SettingsT.TextColor)
		effectsTxt.Font = Enum.Font.Jura
		effectsTxt.RichText = true
		effectsTxt.TextWrapped = true
		effectsTxt.TextYAlignment = "Top"
		effectsTxt.TextSize = 15
		effectsTxt.Text = "Placeholder"

		drawbackstab = Instance.new("TextLabel")
		drawbackstab.Parent = masterscroll
		drawbackstab.Size = UDim2.new(0,214,0,27)
		drawbackstab.Position = UDim2.new(0.085,0,0.411,0)
		drawbackstab.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		drawbackstab.TextColor3 = stringtocolor(SettingsT.TextColor)
		drawbackstab.Font = Enum.Font.Jura
		drawbackstab.TextSize = 18
		drawbackstab.Text = "Drawbacks"

		drawbackscorn = Instance.new("UICorner")
		drawbackscorn.Parent = drawbackstab

		sfdrawbacks = Instance.new("ScrollingFrame")
		sfdrawbacks.BackgroundColor3 = stringtocolor(SettingsT.Background)
		sfdrawbacks.BorderSizePixel = 0
		sfdrawbacks.Parent = masterscroll
		sfdrawbacks.Position = UDim2.new(0.085,0,0.504,0)
		sfdrawbacks.AutomaticCanvasSize = Enum.AutomaticSize.Y
		sfdrawbacks.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		sfdrawbacks.ScrollingDirection = "Y"
		sfdrawbacks.ScrollBarThickness = 3
		sfdrawbacks.AutomaticSize = Enum.AutomaticSize.Y
		sfdrawbacks.Size = UDim2.new(0,214,0,60)
		sfdrawbacks.CanvasSize = UDim2.new(0,0,0,0)
		sfdrawbacks.Name = "Scrollingdrawbacks"

		drawbacksTxt = Instance.new("TextLabel")
		drawbacksTxt.Parent = sfdrawbacks
		drawbacksTxt.Size = UDim2.new(0,207,0,0)
		drawbacksTxt.AutomaticSize = Enum.AutomaticSize.Y
		drawbacksTxt.Position = UDim2.new(0,0,0,0)
		drawbacksTxt.BackgroundTransparency = 1
		drawbacksTxt.TextColor3 = stringtocolor(SettingsT.TextColor)
		drawbacksTxt.Font = Enum.Font.Jura
		drawbacksTxt.RichText = true
		drawbacksTxt.TextWrapped = true
		drawbacksTxt.TextYAlignment = "Top"
		drawbacksTxt.TextSize = 15
		drawbacksTxt.Text = "Placeholder"

		sourcetab = Instance.new("TextLabel")
		sourcetab.Parent = masterscroll
		sourcetab.Size = UDim2.new(0,214,0,27)
		sourcetab.Position = UDim2.new(0.085,0,0.694,0)
		sourcetab.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		sourcetab.TextColor3 = stringtocolor(SettingsT.TextColor)
		sourcetab.Font = Enum.Font.Jura
		sourcetab.TextSize = 18
		sourcetab.Text = "Source"

		sourcecorn = Instance.new("UICorner")
		sourcecorn.Parent = sourcetab

		sfsource = Instance.new("ScrollingFrame")
		sfsource.BackgroundColor3 = stringtocolor(SettingsT.Background)
		sfsource.BorderSizePixel = 0
		sfsource.Parent = masterscroll
		sfsource.Position = UDim2.new(0.085,0,0.788,0)
		sfsource.AutomaticCanvasSize = Enum.AutomaticSize.Y
		sfsource.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		sfsource.ScrollingDirection = "Y"
		sfsource.ScrollBarThickness = 3
		sfsource.AutomaticSize = Enum.AutomaticSize.Y
		sfsource.Size = UDim2.new(0,214,0,51)
		sfsource.CanvasSize = UDim2.new(0,0,0,0)
		sfsource.Name = "Scrollingsource"

		sourceTxt = Instance.new("TextLabel")
		sourceTxt.Parent = sfsource
		sourceTxt.Size = UDim2.new(0,207,0,0)
		sourceTxt.AutomaticSize = Enum.AutomaticSize.Y
		sourceTxt.Position = UDim2.new(0,0,0,0)
		sourceTxt.BackgroundTransparency = 1
		sourceTxt.TextColor3 = stringtocolor(SettingsT.TextColor)
		sourceTxt.Font = Enum.Font.Jura
		sourceTxt.RichText = true
		sourceTxt.TextWrapped = true
		sourceTxt.TextYAlignment = "Top"
		sourceTxt.TextSize = 15
		sourceTxt.Text = "Placeholder"

		upgradetab = Instance.new("TextLabel")
		upgradetab.Parent = masterscroll
		upgradetab.Size = UDim2.new(0,214,0,27)
		upgradetab.Position = UDim2.new(0.085,0,0.694,0)
		upgradetab.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		upgradetab.TextColor3 = stringtocolor(SettingsT.TextColor)
		upgradetab.Font = Enum.Font.Jura
		upgradetab.TextSize = 18
		upgradetab.Text = "Upgrade Cap"

		upgradecorn = Instance.new("UICorner")
		upgradecorn.Parent = upgradetab

		sfupgrade = Instance.new("ScrollingFrame")
		sfupgrade.BackgroundColor3 = stringtocolor(SettingsT.Background)
		sfupgrade.BorderSizePixel = 0
		sfupgrade.Parent = masterscroll
		sfupgrade.Position = UDim2.new(0.085,0,0.788,0)
		sfupgrade.AutomaticCanvasSize = Enum.AutomaticSize.Y
		sfupgrade.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		sfupgrade.ScrollingDirection = "Y"
		sfupgrade.ScrollBarThickness = 3
		sfupgrade.AutomaticSize = Enum.AutomaticSize.Y
		sfupgrade.Size = UDim2.new(0,214,0,51)
		sfupgrade.CanvasSize = UDim2.new(0,0,0,0)
		sfupgrade.Name = "Scrollingupgrade"

		upgradeTxt = Instance.new("TextLabel")
		upgradeTxt.Parent = sfupgrade
		upgradeTxt.Size = UDim2.new(0,207,0,0)
		upgradeTxt.AutomaticSize = Enum.AutomaticSize.Y
		upgradeTxt.Position = UDim2.new(0,0,0,0)
		upgradeTxt.BackgroundTransparency = 1
		upgradeTxt.TextColor3 = stringtocolor(SettingsT.TextColor)
		upgradeTxt.Font = Enum.Font.Jura
		upgradeTxt.RichText = true
		upgradeTxt.TextWrapped = true
		upgradeTxt.TextYAlignment = "Top"
		upgradeTxt.TextSize = 15
		upgradeTxt.Text = "Placeholder"

		local sfvalues = Instance.new("Frame")
		sfvalues.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		sfvalues.BackgroundTransparency = 0
		sfvalues.BorderSizePixel = 0
		sfvalues.Parent = masterscroll
		sfvalues.Position = UDim2.new(0.085,0,0.946,0)
		sfvalues.AutomaticSize = Enum.AutomaticSize.Y
		sfvalues.Size = UDim2.new(0,214,0,0)
		sfvalues.Name = "Values"

		valueslayout = Instance.new("UIListLayout")
		valueslayout.Parent = sfvalues
		valueslayout.Padding = UDim.new(0,0)
		valueslayout.SortOrder = "LayoutOrder"

		valuescorn = Instance.new("UICorner")
		valuescorn.Parent = sfvalues

		local wikiframeMine = Instance.new("ImageLabel")
		wikiframeMine.Image = "rbxassetid://4641149554"
		wikiframeMine.Size = UDim2.new(0,671.5,0,415)
		wikiframeMine.AnchorPoint = Vector2.new(0.5,0.5)
		wikiframeMine.Position = UDim2.new(0.5,0,0.5,0)
		wikiframeMine.ImageColor3 = stringtocolor(SettingsT.Background)
		wikiframeMine.BackgroundTransparency = 1
		wikiframeMine.ScaleType = "Slice"
		wikiframeMine.SliceCenter = Rect.new(4,4,296,296)
		wikiframeMine.BorderSizePixel = 0
		wikiframeMine.Parent = wikiscreenGui
		wikiframeMine.Name = "Mines"
		wikiframeMine.Visible = false
		wikiframeMine.Active = true
		wikiframeMine.Draggable = true

		wikiglowMine = Instance.new("ImageLabel")
		wikiglowMine.Name = "Glow"
		wikiglowMine.BackgroundTransparency = 1
		wikiglowMine.Position = UDim2.new(0, -15, 0, -15)
		wikiglowMine.Size = UDim2.new(1, 30, 1, 30)
		wikiglowMine.ZIndex = 0
		wikiglowMine.Image = "rbxassetid://5028857084"
		wikiglowMine.ImageTransparency = 0
		wikiglowMine.ImageColor3 = stringtocolor(SettingsT.Glow)
		wikiglowMine.ScaleType = Enum.ScaleType.Slice
		wikiglowMine.SliceCenter = Rect.new(24, 24, 276, 276)
		wikiglowMine.Parent = wikiframeMine
		wikiglowMine.ZIndex = 1

		wikitopbarMine = Instance.new("ImageLabel")
		wikitopbarMine.Image = "rbxassetid://4595286933"
		wikitopbarMine.Size = UDim2.new(1,0,0,38)
		wikitopbarMine.Position = UDim2.new(0,0,0,0)
		wikitopbarMine.ImageColor3 = stringtocolor(SettingsT.DarkContrast)
		wikitopbarMine.BackgroundTransparency = 1
		wikitopbarMine.ScaleType = "Slice"
		wikitopbarMine.SliceCenter = Rect.new(4,4,296,296)
		wikitopbarMine.BorderSizePixel = 0
		wikitopbarMine.Parent = wikiframeMine

		topbarwikitextMine = Instance.new("TextLabel")
		topbarwikitextMine.Font = Enum.Font.Jura
		topbarwikitextMine.BackgroundTransparency = 1
		topbarwikitextMine.Size = UDim2.new(1,0,0,38)
		topbarwikitextMine.Position = UDim2.new(0,0,0,0)
		topbarwikitextMine.Parent = wikitopbarMine
		topbarwikitextMine.Text = "Vulcan's Wrath"
		topbarwikitextMine.TextColor3 = stringtocolor(SettingsT.TextColor)
		topbarwikitextMine.TextSize = 18

		viewportMine = Instance.new("ViewportFrame")
		viewportMine.Parent = wikiframeMine
		viewportMine.Size = UDim2.new(0,375,0,300)
		viewportMine.Position = UDim2.new(0,4,0,38)
		viewportMine.BackgroundColor3 = stringtocolor(SettingsT.Background)
		viewportMine.BorderSizePixel = 4
		viewportMine.BorderColor3 = stringtocolor(SettingsT.DarkContrast)
		viewportMine.BackgroundTransparency = 0
		viewportMine.CurrentCamera = wikiscreenGui.Camera

		backwikiMine = Instance.new("TextButton")
		backwikiMine.Parent = viewportMine
		backwikiMine.Text = "Back"
		backwikiMine.TextSize = 14
		backwikiMine.TextColor3 = stringtocolor(SettingsT.TextColor)
		backwikiMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		backwikiMine.BackgroundTransparency = 0
		backwikiMine.TextTransparency = 0
		backwikiMine.AutoButtonColor = false
		backwikiMine.Position = UDim2.new(0.027,0,0.033,0)
		backwikiMine.Size = UDim2.new(0,60,0,26)
		backwikiMine.Font = Enum.Font.Jura

		backwikiMine.MouseEnter:Connect(function()
		    local tweentrans = TweenService:Create(backwikiMine, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3})
		    tweentrans:Play()
		end)

		backwikiMine.MouseLeave:Connect(function()
		    local tweentrans = TweenService:Create(backwikiMine, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0})
		    tweentrans:Play()
		end)

		backwikicornMine = Instance.new("UICorner")
		backwikicornMine.Parent = backwikiMine

		shinywikiMine = Instance.new("TextButton")
		shinywikiMine.Parent = viewportMine
		shinywikiMine.Text = "Shiny"
		shinywikiMine.TextSize = 14
		shinywikiMine.TextColor3 = stringtocolor(SettingsT.TextColor)
		shinywikiMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		shinywikiMine.BackgroundTransparency = 0
		shinywikiMine.TextTransparency = 0
		shinywikiMine.AutoButtonColor = false
		shinywikiMine.Position = UDim2.new(0.815,0,0.033,0)
		shinywikiMine.Size = UDim2.new(0,60,0,26)
		shinywikiMine.Font = Enum.Font.Jura

		shinywikiMine.MouseEnter:Connect(function()
		    local tweentrans = TweenService:Create(shinywikiMine, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3})
		    tweentrans:Play()
		end)

		shinywikiMine.MouseLeave:Connect(function()
		    local tweentrans = TweenService:Create(shinywikiMine, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0})
		    tweentrans:Play()
		end)

		shinywikicornMine = Instance.new("UICorner")
		shinywikicornMine.Parent = shinywikiMine

		tierlabelMine = Instance.new("TextLabel")
		tierlabelMine.Parent = wikiframeMine
		tierlabelMine.Size = UDim2.new(0,375,0,49)
		tierlabelMine.Position = UDim2.new(0.009,0,0.848,0)
		tierlabelMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		tierlabelMine.TextColor3 = stringtocolor(SettingsT.TextColor)
		tierlabelMine.Font = Enum.Font.Jura
		tierlabelMine.TextSize = 18
		tierlabelMine.Text = "placeholder"

		tiercornerMine = Instance.new("UICorner")
		tiercornerMine.Parent = tierlabelMine

		local masterscrollMine = Instance.new("ScrollingFrame")
		masterscrollMine.BackgroundColor3 = stringtocolor(SettingsT.Background)
		masterscrollMine.BackgroundTransparency = 1
		masterscrollMine.BorderSizePixel = 0
		masterscrollMine.Parent = wikiframeMine
		masterscrollMine.Position = UDim2.new(0.574,-4,0.116,0)
		masterscrollMine.Size = UDim2.new(0,284,0,353)
		--masterscrollMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
		masterscrollMine.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		masterscrollMine.ScrollingDirection = "Y"
		masterscrollMine.ScrollBarThickness = 3
		masterscrollMine.CanvasSize = UDim2.new(0,0,0,0)
		masterscrollMine.Name = "masterscroll"

		masterlayoutMine = Instance.new("UIListLayout")
		masterlayoutMine.Parent = masterscrollMine
		masterlayoutMine.Padding = UDim.new(0,7.5)
		masterlayoutMine.HorizontalAlignment = "Center"
		masterlayoutMine.SortOrder = "LayoutOrder"

		orevaluetabMine = Instance.new("TextLabel")
		orevaluetabMine.Parent = masterscrollMine
		orevaluetabMine.Size = UDim2.new(0,214,0,27)
		orevaluetabMine.Position = UDim2.new(0.085,0,-0.001,0)
		orevaluetabMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		orevaluetabMine.TextColor3 = stringtocolor(SettingsT.TextColor)
		orevaluetabMine.Font = Enum.Font.Jura
		orevaluetabMine.TextSize = 18
		orevaluetabMine.LayoutOrder = 0
		orevaluetabMine.Text = "Ore Value"

		orevaluecornMine = Instance.new("UICorner")
		orevaluecornMine.Parent = orevaluetabMine

		sforevalueMine = Instance.new("ScrollingFrame")
		sforevalueMine.BackgroundColor3 = stringtocolor(SettingsT.Background)
		sforevalueMine.BorderSizePixel = 0
		sforevalueMine.Parent = masterscrollMine
		sforevalueMine.Position = UDim2.new(0.085,0,0.098,0)
		sforevalueMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
		sforevalueMine.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		sforevalueMine.ScrollingDirection = "Y"
		sforevalueMine.ScrollBarThickness = 3
		sforevalueMine.AutomaticSize = Enum.AutomaticSize.Y
		sforevalueMine.Size = UDim2.new(0,214,0,102)
		sforevalueMine.CanvasSize = UDim2.new(0,0,0,0)
		sforevalueMine.Name = "Scrollingorevalue"

		orevalueTxtMine = Instance.new("TextLabel")
		orevalueTxtMine.Parent = sforevalueMine
		orevalueTxtMine.Size = UDim2.new(0,207,0,0)
		orevalueTxtMine.AutomaticSize = Enum.AutomaticSize.Y
		orevalueTxtMine.Position = UDim2.new(0,0,0,0)
		orevalueTxtMine.BackgroundTransparency = 1
		orevalueTxtMine.TextColor3 = stringtocolor(SettingsT.TextColor)
		orevalueTxtMine.Font = Enum.Font.Jura
		orevalueTxtMine.RichText = true
		orevalueTxtMine.TextWrapped = true
		orevalueTxtMine.TextYAlignment = "Top"
		orevalueTxtMine.TextSize = 15
		orevalueTxtMine.Text = "Placeholder"

		dropratetabMine = Instance.new("TextLabel")
		dropratetabMine.Parent = masterscrollMine
		dropratetabMine.Size = UDim2.new(0,214,0,27)
		dropratetabMine.Position = UDim2.new(0.085,0,-0.001,0)
		dropratetabMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		dropratetabMine.TextColor3 = stringtocolor(SettingsT.TextColor)
		dropratetabMine.Font = Enum.Font.Jura
		dropratetabMine.TextSize = 18
		dropratetabMine.LayoutOrder = 0
		dropratetabMine.Text = "Drop Rate"

		dropratecornMine = Instance.new("UICorner")
		dropratecornMine.Parent = dropratetabMine

		sfdroprateMine = Instance.new("ScrollingFrame")
		sfdroprateMine.BackgroundColor3 = stringtocolor(SettingsT.Background)
		sfdroprateMine.BorderSizePixel = 0
		sfdroprateMine.Parent = masterscrollMine
		sfdroprateMine.Position = UDim2.new(0.085,0,0.098,0)
		sfdroprateMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
		sfdroprateMine.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		sfdroprateMine.ScrollingDirection = "Y"
		sfdroprateMine.ScrollBarThickness = 3
		sfdroprateMine.AutomaticSize = Enum.AutomaticSize.Y
		sfdroprateMine.Size = UDim2.new(0,214,0,102)
		sfdroprateMine.CanvasSize = UDim2.new(0,0,0,0)
		sfdroprateMine.Name = "Scrollingdroprate"

		droprateTxtMine = Instance.new("TextLabel")
		droprateTxtMine.Parent = sfdroprateMine
		droprateTxtMine.Size = UDim2.new(0,207,0,0)
		droprateTxtMine.AutomaticSize = Enum.AutomaticSize.Y
		droprateTxtMine.Position = UDim2.new(0,0,0,0)
		droprateTxtMine.BackgroundTransparency = 1
		droprateTxtMine.TextColor3 = stringtocolor(SettingsT.TextColor)
		droprateTxtMine.Font = Enum.Font.Jura
		droprateTxtMine.RichText = true
		droprateTxtMine.TextWrapped = true
		droprateTxtMine.TextYAlignment = "Top"
		droprateTxtMine.TextSize = 15
		droprateTxtMine.Text = "Placeholder"

		oresizetabMine = Instance.new("TextLabel")
		oresizetabMine.Parent = masterscrollMine
		oresizetabMine.Size = UDim2.new(0,214,0,27)
		oresizetabMine.Position = UDim2.new(0.085,0,-0.001,0)
		oresizetabMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		oresizetabMine.TextColor3 = stringtocolor(SettingsT.TextColor)
		oresizetabMine.Font = Enum.Font.Jura
		oresizetabMine.TextSize = 18
		oresizetabMine.LayoutOrder = 0
		oresizetabMine.Text = "Ore Size"

		oresizecornMine = Instance.new("UICorner")
		oresizecornMine.Parent = oresizetabMine

		sforesizeMine = Instance.new("ScrollingFrame")
		sforesizeMine.BackgroundColor3 = stringtocolor(SettingsT.Background)
		sforesizeMine.BorderSizePixel = 0
		sforesizeMine.Parent = masterscrollMine
		sforesizeMine.Position = UDim2.new(0.085,0,0.098,0)
		sforesizeMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
		sforesizeMine.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		sforesizeMine.ScrollingDirection = "Y"
		sforesizeMine.ScrollBarThickness = 3
		sforesizeMine.AutomaticSize = Enum.AutomaticSize.Y
		sforesizeMine.Size = UDim2.new(0,214,0,102)
		sforesizeMine.CanvasSize = UDim2.new(0,0,0,0)
		sforesizeMine.Name = "Scrollingoresize"

		oresizeTxtMine = Instance.new("TextLabel")
		oresizeTxtMine.Parent = sforesizeMine
		oresizeTxtMine.Size = UDim2.new(0,207,0,0)
		oresizeTxtMine.AutomaticSize = Enum.AutomaticSize.Y
		oresizeTxtMine.Position = UDim2.new(0,0,0,0)
		oresizeTxtMine.BackgroundTransparency = 1
		oresizeTxtMine.TextColor3 = stringtocolor(SettingsT.TextColor)
		oresizeTxtMine.Font = Enum.Font.Jura
		oresizeTxtMine.RichText = true
		oresizeTxtMine.TextWrapped = true
		oresizeTxtMine.TextYAlignment = "Top"
		oresizeTxtMine.TextSize = 15
		oresizeTxtMine.Text = "Placeholder"

		effectstabMine = Instance.new("TextLabel")
		effectstabMine.Parent = masterscrollMine
		effectstabMine.Size = UDim2.new(0,214,0,27)
		effectstabMine.Position = UDim2.new(0.085,0,-0.001,0)
		effectstabMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		effectstabMine.TextColor3 = stringtocolor(SettingsT.TextColor)
		effectstabMine.Font = Enum.Font.Jura
		effectstabMine.TextSize = 18
		effectstabMine.LayoutOrder = 0
		effectstabMine.Text = "Effects"

		effectscornMine = Instance.new("UICorner")
		effectscornMine.Parent = effectstabMine

		sfeffectsMine = Instance.new("ScrollingFrame")
		sfeffectsMine.BackgroundColor3 = stringtocolor(SettingsT.Background)
		sfeffectsMine.BorderSizePixel = 0
		sfeffectsMine.Parent = masterscrollMine
		sfeffectsMine.Position = UDim2.new(0.085,0,0.098,0)
		sfeffectsMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
		sfeffectsMine.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		sfeffectsMine.ScrollingDirection = "Y"
		sfeffectsMine.ScrollBarThickness = 3
		sfeffectsMine.AutomaticSize = Enum.AutomaticSize.Y
		sfeffectsMine.Size = UDim2.new(0,214,0,102)
		sfeffectsMine.CanvasSize = UDim2.new(0,0,0,0)
		sfeffectsMine.Name = "ScrollingEffects"

		effectsTxtMine = Instance.new("TextLabel")
		effectsTxtMine.Parent = sfeffectsMine
		effectsTxtMine.Size = UDim2.new(0,207,0,0)
		effectsTxtMine.AutomaticSize = Enum.AutomaticSize.Y
		effectsTxtMine.Position = UDim2.new(0,0,0,0)
		effectsTxtMine.BackgroundTransparency = 1
		effectsTxtMine.TextColor3 = stringtocolor(SettingsT.TextColor)
		effectsTxtMine.Font = Enum.Font.Jura
		effectsTxtMine.RichText = true
		effectsTxtMine.TextWrapped = true
		effectsTxtMine.TextYAlignment = "Top"
		effectsTxtMine.TextSize = 15
		effectsTxtMine.Text = "Placeholder"

		drawbackstabMine = Instance.new("TextLabel")
		drawbackstabMine.Parent = masterscrollMine
		drawbackstabMine.Size = UDim2.new(0,214,0,27)
		drawbackstabMine.Position = UDim2.new(0.085,0,0.411,0)
		drawbackstabMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		drawbackstabMine.TextColor3 = stringtocolor(SettingsT.TextColor)
		drawbackstabMine.Font = Enum.Font.Jura
		drawbackstabMine.TextSize = 18
		drawbackstabMine.Text = "Drawbacks"

		drawbackscorn = Instance.new("UICorner")
		drawbackscorn.Parent = drawbackstabMine

		sfdrawbacksMine = Instance.new("ScrollingFrame")
		sfdrawbacksMine.BackgroundColor3 = stringtocolor(SettingsT.Background)
		sfdrawbacksMine.BorderSizePixel = 0
		sfdrawbacksMine.Parent = masterscrollMine
		sfdrawbacksMine.Position = UDim2.new(0.085,0,0.504,0)
		sfdrawbacksMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
		sfdrawbacksMine.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		sfdrawbacksMine.ScrollingDirection = "Y"
		sfdrawbacksMine.ScrollBarThickness = 3
		sfdrawbacksMine.AutomaticSize = Enum.AutomaticSize.Y
		sfdrawbacksMine.Size = UDim2.new(0,214,0,60)
		sfdrawbacksMine.CanvasSize = UDim2.new(0,0,0,0)
		sfdrawbacksMine.Name = "Scrollingdrawbacks"

		drawbacksTxtMine = Instance.new("TextLabel")
		drawbacksTxtMine.Parent = sfdrawbacksMine
		drawbacksTxtMine.Size = UDim2.new(0,207,0,0)
		drawbacksTxtMine.AutomaticSize = Enum.AutomaticSize.Y
		drawbacksTxtMine.Position = UDim2.new(0,0,0,0)
		drawbacksTxtMine.BackgroundTransparency = 1
		drawbacksTxtMine.TextColor3 = stringtocolor(SettingsT.TextColor)
		drawbacksTxtMine.Font = Enum.Font.Jura
		drawbacksTxtMine.RichText = true
		drawbacksTxtMine.TextWrapped = true
		drawbacksTxtMine.TextYAlignment = "Top"
		drawbacksTxtMine.TextSize = 15
		drawbacksTxtMine.Text = "Placeholder"

		sourcetabMine = Instance.new("TextLabel")
		sourcetabMine.Parent = masterscrollMine
		sourcetabMine.Size = UDim2.new(0,214,0,27)
		sourcetabMine.Position = UDim2.new(0.085,0,0.694,0)
		sourcetabMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		sourcetabMine.TextColor3 = stringtocolor(SettingsT.TextColor)
		sourcetabMine.Font = Enum.Font.Jura
		sourcetabMine.TextSize = 18
		sourcetabMine.Text = "Source"

		sourcecornMine = Instance.new("UICorner")
		sourcecornMine.Parent = sourcetabMine

		sfsourceMine = Instance.new("ScrollingFrame")
		sfsourceMine.BackgroundColor3 = stringtocolor(SettingsT.Background)
		sfsourceMine.BorderSizePixel = 0
		sfsourceMine.Parent = masterscrollMine
		sfsourceMine.Position = UDim2.new(0.085,0,0.788,0)
		sfsourceMine.AutomaticCanvasSize = Enum.AutomaticSize.Y
		sfsourceMine.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		sfsourceMine.ScrollingDirection = "Y"
		sfsourceMine.ScrollBarThickness = 3
		sfsourceMine.AutomaticSize = Enum.AutomaticSize.Y
		sfsourceMine.Size = UDim2.new(0,214,0,51)
		sfsourceMine.CanvasSize = UDim2.new(0,0,0,0)
		sfsourceMine.Name = "Scrollingsource"

		sourceTxtMine = Instance.new("TextLabel")
		sourceTxtMine.Parent = sfsourceMine
		sourceTxtMine.Size = UDim2.new(0,207,0,0)
		sourceTxtMine.AutomaticSize = Enum.AutomaticSize.Y
		sourceTxtMine.Position = UDim2.new(0,0,0,0)
		sourceTxtMine.BackgroundTransparency = 1
		sourceTxtMine.TextColor3 = stringtocolor(SettingsT.TextColor)
		sourceTxtMine.Font = Enum.Font.Jura
		sourceTxtMine.RichText = true
		sourceTxtMine.TextWrapped = true
		sourceTxtMine.TextYAlignment = "Top"
		sourceTxtMine.TextSize = 15
		sourceTxtMine.Text = "Placeholder"

		local sfvaluesMine = Instance.new("Frame")
		sfvaluesMine.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		sfvaluesMine.BackgroundTransparency = 0
		sfvaluesMine.BorderSizePixel = 0
		sfvaluesMine.Parent = masterscrollMine
		sfvaluesMine.Position = UDim2.new(0.085,0,0.946,0)
		sfvaluesMine.AutomaticSize = Enum.AutomaticSize.Y
		sfvaluesMine.Size = UDim2.new(0,214,0,0)
		sfvaluesMine.Name = "Values"

		valueslayoutMine = Instance.new("UIListLayout")
		valueslayoutMine.Parent = sfvaluesMine
		valueslayoutMine.Padding = UDim.new(0,0)
		valueslayoutMine.SortOrder = "LayoutOrder"

		valuescornMine = Instance.new("UICorner")
		valuescornMine.Parent = sfvaluesMine

		local wikiframeFurn = Instance.new("ImageLabel")
		wikiframeFurn.Image = "rbxassetid://4641149554"
		wikiframeFurn.Size = UDim2.new(0,671.5,0,415)
		wikiframeFurn.AnchorPoint = Vector2.new(0.5,0.5)
		wikiframeFurn.Position = UDim2.new(0.5,0,0.5,0)
		wikiframeFurn.ImageColor3 = stringtocolor(SettingsT.Background)
		wikiframeFurn.BackgroundTransparency = 1
		wikiframeFurn.ScaleType = "Slice"
		wikiframeFurn.SliceCenter = Rect.new(4,4,296,296)
		wikiframeFurn.BorderSizePixel = 0
		wikiframeFurn.Parent = wikiscreenGui
		wikiframeFurn.Name = "Furnaces"
		wikiframeFurn.Visible = false
		wikiframeFurn.Active = true
		wikiframeFurn.Draggable = true

		wikiglowFurn = Instance.new("ImageLabel")
		wikiglowFurn.Name = "Glow"
		wikiglowFurn.BackgroundTransparency = 1
		wikiglowFurn.Position = UDim2.new(0, -15, 0, -15)
		wikiglowFurn.Size = UDim2.new(1, 30, 1, 30)
		wikiglowFurn.ZIndex = 0
		wikiglowFurn.Image = "rbxassetid://5028857084"
		wikiglowFurn.ImageTransparency = 0
		wikiglowFurn.ImageColor3 = stringtocolor(SettingsT.Glow)
		wikiglowFurn.ScaleType = Enum.ScaleType.Slice
		wikiglowFurn.SliceCenter = Rect.new(24, 24, 276, 276)
		wikiglowFurn.Parent = wikiframeFurn
		wikiglowFurn.ZIndex = 1

		wikitopbarFurn = Instance.new("ImageLabel")
		wikitopbarFurn.Image = "rbxassetid://4595286933"
		wikitopbarFurn.Size = UDim2.new(1,0,0,38)
		wikitopbarFurn.Position = UDim2.new(0,0,0,0)
		wikitopbarFurn.ImageColor3 = stringtocolor(SettingsT.DarkContrast)
		wikitopbarFurn.BackgroundTransparency = 1
		wikitopbarFurn.ScaleType = "Slice"
		wikitopbarFurn.SliceCenter = Rect.new(4,4,296,296)
		wikitopbarFurn.BorderSizePixel = 0
		wikitopbarFurn.Parent = wikiframeFurn

		topbarwikitextFurn = Instance.new("TextLabel")
		topbarwikitextFurn.Font = Enum.Font.Jura
		topbarwikitextFurn.BackgroundTransparency = 1
		topbarwikitextFurn.Size = UDim2.new(1,0,0,38)
		topbarwikitextFurn.Position = UDim2.new(0,0,0,0)
		topbarwikitextFurn.Parent = wikitopbarFurn
		topbarwikitextFurn.Text = "Vulcan's Wrath"
		topbarwikitextFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
		topbarwikitextFurn.TextSize = 18

		local viewportFurn = Instance.new("ViewportFrame")
		viewportFurn.Parent = wikiframeFurn
		viewportFurn.Size = UDim2.new(0,375,0,300)
		viewportFurn.Position = UDim2.new(0,4,0,38)
		viewportFurn.BackgroundColor3 = stringtocolor(SettingsT.Background)
		viewportFurn.BorderSizePixel = 4
		viewportFurn.BorderColor3 = stringtocolor(SettingsT.DarkContrast)
		viewportFurn.BackgroundTransparency = 0
		viewportFurn.CurrentCamera = wikiscreenGui.Camera

		backwikiFurn = Instance.new("TextButton")
		backwikiFurn.Parent = viewportFurn
		backwikiFurn.Text = "Back"
		backwikiFurn.TextSize = 14
		backwikiFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
		backwikiFurn.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		backwikiFurn.BackgroundTransparency = 0
		backwikiFurn.TextTransparency = 0
		backwikiFurn.AutoButtonColor = false
		backwikiFurn.Position = UDim2.new(0.027,0,0.033,0)
		backwikiFurn.Size = UDim2.new(0,60,0,26)
		backwikiFurn.Font = Enum.Font.Jura

		backwikiFurn.MouseEnter:Connect(function()
		    local tweentrans = TweenService:Create(backwikiFurn, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3})
		    tweentrans:Play()
		end)

		backwikiFurn.MouseLeave:Connect(function()
		    local tweentrans = TweenService:Create(backwikiFurn, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0})
		    tweentrans:Play()
		end)

		backwikicornFurn = Instance.new("UICorner")
		backwikicornFurn.Parent = backwikiFurn

		shinywikiFurn = Instance.new("TextButton")
		shinywikiFurn.Parent = viewportFurn
		shinywikiFurn.Text = "Shiny"
		shinywikiFurn.TextSize = 14
		shinywikiFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
		shinywikiFurn.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		shinywikiFurn.BackgroundTransparency = 0
		shinywikiFurn.TextTransparency = 0
		shinywikiFurn.AutoButtonColor = false
		shinywikiFurn.Position = UDim2.new(0.815,0,0.033,0)
		shinywikiFurn.Size = UDim2.new(0,60,0,26)
		shinywikiFurn.Font = Enum.Font.Jura

		shinywikiFurn.MouseEnter:Connect(function()
		    local tweentrans = TweenService:Create(shinywikiFurn, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3})
		    tweentrans:Play()
		end)

		shinywikiFurn.MouseLeave:Connect(function()
		    local tweentrans = TweenService:Create(shinywikiFurn, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0})
		    tweentrans:Play()
		end)

		shinywikicornFurn = Instance.new("UICorner")
		shinywikicornFurn.Parent = shinywikiFurn

		tierlabelFurn = Instance.new("TextLabel")
		tierlabelFurn.Parent = wikiframeFurn
		tierlabelFurn.Size = UDim2.new(0,375,0,49)
		tierlabelFurn.Position = UDim2.new(0.009,0,0.848,0)
		tierlabelFurn.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		tierlabelFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
		tierlabelFurn.Font = Enum.Font.Jura
		tierlabelFurn.TextSize = 18
		tierlabelFurn.Text = "placeholder"

		tiercornerFurn = Instance.new("UICorner")
		tiercornerFurn.Parent = tierlabelFurn

		local masterscrollFurn = Instance.new("ScrollingFrame")
		masterscrollFurn.BackgroundColor3 = stringtocolor(SettingsT.Background)
		masterscrollFurn.BackgroundTransparency = 1
		masterscrollFurn.BorderSizePixel = 0
		masterscrollFurn.Parent = wikiframeFurn
		masterscrollFurn.Position = UDim2.new(0.574,-4,0.116,0)
		masterscrollFurn.Size = UDim2.new(0,284,0,353)
		--masterscrollFurn.AutomaticCanvasSize = Enum.AutomaticSize.Y
		masterscrollFurn.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		masterscrollFurn.ScrollingDirection = "Y"
		masterscrollFurn.ScrollBarThickness = 3
		masterscrollFurn.CanvasSize = UDim2.new(0,0,0,0)
		masterscrollFurn.Name = "masterscroll"

		masterlayoutFurn = Instance.new("UIListLayout")
		masterlayoutFurn.Parent = masterscrollFurn
		masterlayoutFurn.Padding = UDim.new(0,7.5)
		masterlayoutFurn.HorizontalAlignment = "Center"
		masterlayoutFurn.SortOrder = "LayoutOrder"

		effectstabFurn = Instance.new("TextLabel")
		effectstabFurn.Parent = masterscrollFurn
		effectstabFurn.Size = UDim2.new(0,214,0,27)
		effectstabFurn.Position = UDim2.new(0.085,0,-0.001,0)
		effectstabFurn.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		effectstabFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
		effectstabFurn.Font = Enum.Font.Jura
		effectstabFurn.TextSize = 18
		effectstabFurn.LayoutOrder = 0
		effectstabFurn.Text = "Effects"

		effectscornFurn = Instance.new("UICorner")
		effectscornFurn.Parent = effectstabFurn

		sfeffectsFurn = Instance.new("ScrollingFrame")
		sfeffectsFurn.BackgroundColor3 = stringtocolor(SettingsT.Background)
		sfeffectsFurn.BorderSizePixel = 0
		sfeffectsFurn.Parent = masterscrollFurn
		sfeffectsFurn.Position = UDim2.new(0.085,0,0.098,0)
		sfeffectsFurn.AutomaticCanvasSize = Enum.AutomaticSize.Y
		sfeffectsFurn.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		sfeffectsFurn.ScrollingDirection = "Y"
		sfeffectsFurn.ScrollBarThickness = 3
		sfeffectsFurn.AutomaticSize = Enum.AutomaticSize.Y
		sfeffectsFurn.Size = UDim2.new(0,214,0,102)
		sfeffectsFurn.CanvasSize = UDim2.new(0,0,0,0)
		sfeffectsFurn.Name = "ScrollingEffects"

		effectsTxtFurn = Instance.new("TextLabel")
		effectsTxtFurn.Parent = sfeffectsFurn
		effectsTxtFurn.Size = UDim2.new(0,207,0,0)
		effectsTxtFurn.AutomaticSize = Enum.AutomaticSize.Y
		effectsTxtFurn.Position = UDim2.new(0,0,0,0)
		effectsTxtFurn.BackgroundTransparency = 1
		effectsTxtFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
		effectsTxtFurn.Font = Enum.Font.Jura
		effectsTxtFurn.RichText = true
		effectsTxtFurn.TextWrapped = true
		effectsTxtFurn.TextYAlignment = "Top"
		effectsTxtFurn.TextSize = 15
		effectsTxtFurn.Text = "Placeholder"

		drawbackstabFurn = Instance.new("TextLabel")
		drawbackstabFurn.Parent = masterscrollFurn
		drawbackstabFurn.Size = UDim2.new(0,214,0,27)
		drawbackstabFurn.Position = UDim2.new(0.085,0,0.411,0)
		drawbackstabFurn.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		drawbackstabFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
		drawbackstabFurn.Font = Enum.Font.Jura
		drawbackstabFurn.TextSize = 18
		drawbackstabFurn.Text = "Drawbacks"

		drawbackscorn = Instance.new("UICorner")
		drawbackscorn.Parent = drawbackstabFurn

		sfdrawbacksFurn = Instance.new("ScrollingFrame")
		sfdrawbacksFurn.BackgroundColor3 = stringtocolor(SettingsT.Background)
		sfdrawbacksFurn.BorderSizePixel = 0
		sfdrawbacksFurn.Parent = masterscrollFurn
		sfdrawbacksFurn.Position = UDim2.new(0.085,0,0.504,0)
		sfdrawbacksFurn.AutomaticCanvasSize = Enum.AutomaticSize.Y
		sfdrawbacksFurn.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		sfdrawbacksFurn.ScrollingDirection = "Y"
		sfdrawbacksFurn.ScrollBarThickness = 3
		sfdrawbacksFurn.AutomaticSize = Enum.AutomaticSize.Y
		sfdrawbacksFurn.Size = UDim2.new(0,214,0,60)
		sfdrawbacksFurn.CanvasSize = UDim2.new(0,0,0,0)
		sfdrawbacksFurn.Name = "Scrollingdrawbacks"

		drawbacksTxtFurn = Instance.new("TextLabel")
		drawbacksTxtFurn.Parent = sfdrawbacksFurn
		drawbacksTxtFurn.Size = UDim2.new(0,207,0,0)
		drawbacksTxtFurn.AutomaticSize = Enum.AutomaticSize.Y
		drawbacksTxtFurn.Position = UDim2.new(0,0,0,0)
		drawbacksTxtFurn.BackgroundTransparency = 1
		drawbacksTxtFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
		drawbacksTxtFurn.Font = Enum.Font.Jura
		drawbacksTxtFurn.RichText = true
		drawbacksTxtFurn.TextWrapped = true
		drawbacksTxtFurn.TextYAlignment = "Top"
		drawbacksTxtFurn.TextSize = 15
		drawbacksTxtFurn.Text = "Placeholder"

		RPtabFurn = Instance.new("TextLabel")
		RPtabFurn.Parent = masterscrollFurn
		RPtabFurn.Size = UDim2.new(0,214,0,27)
		RPtabFurn.Position = UDim2.new(0.085,0,-0.001,0)
		RPtabFurn.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		RPtabFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
		RPtabFurn.Font = Enum.Font.Jura
		RPtabFurn.TextSize = 18
		RPtabFurn.LayoutOrder = 0
		RPtabFurn.Text = "RP Yield"

		RPcornFurn = Instance.new("UICorner")
		RPcornFurn.Parent = RPtabFurn

		sfRPFurn = Instance.new("ScrollingFrame")
		sfRPFurn.BackgroundColor3 = stringtocolor(SettingsT.Background)
		sfRPFurn.BorderSizePixel = 0
		sfRPFurn.Parent = masterscrollFurn
		sfRPFurn.Position = UDim2.new(0.085,0,0.098,0)
		sfRPFurn.AutomaticCanvasSize = Enum.AutomaticSize.Y
		sfRPFurn.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		sfRPFurn.ScrollingDirection = "Y"
		sfRPFurn.ScrollBarThickness = 3
		sfRPFurn.AutomaticSize = Enum.AutomaticSize.Y
		sfRPFurn.Size = UDim2.new(0,214,0,102)
		sfRPFurn.CanvasSize = UDim2.new(0,0,0,0)
		sfRPFurn.Name = "ScrollingRP"

		RPTxtFurn = Instance.new("TextLabel")
		RPTxtFurn.Parent = sfRPFurn
		RPTxtFurn.Size = UDim2.new(0,207,0,0)
		RPTxtFurn.AutomaticSize = Enum.AutomaticSize.Y
		RPTxtFurn.Position = UDim2.new(0,0,0,0)
		RPTxtFurn.BackgroundTransparency = 1
		RPTxtFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
		RPTxtFurn.Font = Enum.Font.Jura
		RPTxtFurn.RichText = true
		RPTxtFurn.TextWrapped = true
		RPTxtFurn.TextYAlignment = "Top"
		RPTxtFurn.TextSize = 15
		RPTxtFurn.Text = "Placeholder"

		sourcetabFurn = Instance.new("TextLabel")
		sourcetabFurn.Parent = masterscrollFurn
		sourcetabFurn.Size = UDim2.new(0,214,0,27)
		sourcetabFurn.Position = UDim2.new(0.085,0,0.694,0)
		sourcetabFurn.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		sourcetabFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
		sourcetabFurn.Font = Enum.Font.Jura
		sourcetabFurn.TextSize = 18
		sourcetabFurn.Text = "Source"

		sourcecornFurn = Instance.new("UICorner")
		sourcecornFurn.Parent = sourcetabFurn

		sfsourceFurn = Instance.new("ScrollingFrame")
		sfsourceFurn.BackgroundColor3 = stringtocolor(SettingsT.Background)
		sfsourceFurn.BorderSizePixel = 0
		sfsourceFurn.Parent = masterscrollFurn
		sfsourceFurn.Position = UDim2.new(0.085,0,0.788,0)
		sfsourceFurn.AutomaticCanvasSize = Enum.AutomaticSize.Y
		sfsourceFurn.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		sfsourceFurn.ScrollingDirection = "Y"
		sfsourceFurn.ScrollBarThickness = 3
		sfsourceFurn.AutomaticSize = Enum.AutomaticSize.Y
		sfsourceFurn.Size = UDim2.new(0,214,0,51)
		sfsourceFurn.CanvasSize = UDim2.new(0,0,0,0)
		sfsourceFurn.Name = "Scrollingsource"

		sourceTxtFurn = Instance.new("TextLabel")
		sourceTxtFurn.Parent = sfsourceFurn
		sourceTxtFurn.Size = UDim2.new(0,207,0,0)
		sourceTxtFurn.AutomaticSize = Enum.AutomaticSize.Y
		sourceTxtFurn.Position = UDim2.new(0,0,0,0)
		sourceTxtFurn.BackgroundTransparency = 1
		sourceTxtFurn.TextColor3 = stringtocolor(SettingsT.TextColor)
		sourceTxtFurn.Font = Enum.Font.Jura
		sourceTxtFurn.RichText = true
		sourceTxtFurn.TextWrapped = true
		sourceTxtFurn.TextYAlignment = "Top"
		sourceTxtFurn.TextSize = 15
		sourceTxtFurn.Text = "Placeholder"

		local sfvaluesFurn = Instance.new("Frame")
		sfvaluesFurn.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		sfvaluesFurn.BackgroundTransparency = 0
		sfvaluesFurn.BorderSizePixel = 0
		sfvaluesFurn.Parent = masterscrollFurn
		sfvaluesFurn.Position = UDim2.new(0.085,0,0.946,0)
		sfvaluesFurn.AutomaticSize = Enum.AutomaticSize.Y
		sfvaluesFurn.Size = UDim2.new(0,214,0,0)
		sfvaluesFurn.Name = "Values"

		valueslayoutFurn = Instance.new("UIListLayout")
		valueslayoutFurn.Parent = sfvaluesFurn
		valueslayoutFurn.Padding = UDim.new(0,0)
		valueslayoutFurn.SortOrder = "LayoutOrder"

		valuescornFurn = Instance.new("UICorner")
		valuescornFurn.Parent = sfvaluesFurn

		local TweenService = game:GetService("TweenService")
		local wikisearch = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local wikisearchTopBar = Instance.new("ImageLabel")
		local wikisearchTBText = Instance.new("TextLabel")
		local wikisearchglow = Instance.new("ImageLabel")
		local backwikisearch = Instance.new("TextButton")
		local wikisearchSearchBar = Instance.new("TextBox")
		local masterwikiscroll = Instance.new("ScrollingFrame")
		local UIPadding = Instance.new("UIPadding")
		local UIListLayout = Instance.new("UIListLayout")
		local UICorner_6 = Instance.new("UICorner")
		local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
		local UIPadding_3 = Instance.new("UIPadding")
		local UICorner_7 = Instance.new("UICorner")

		wikisearch.Name = "wikisearch"
		wikisearch.Parent = wikiscreenGui
		wikisearch.BackgroundColor3 = stringtocolor(SettingsT.Background)
		wikisearch.BorderSizePixel = 0
		wikisearch.Position = UDim2.new(0.104929581, 0, 0.278659225, 0)
		wikisearch.Size = UDim2.new(0, 671, 0, 415)
		wikisearch.Visible = false
		wikisearch.Active = true
		wikisearch.Draggable = true

		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = wikisearch

		wikisearchTopBar.Name = "topbar"
		wikisearchTopBar.Parent = wikisearch
		wikisearchTopBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		wikisearchTopBar.BackgroundTransparency = 1.000
		wikisearchTopBar.Size = UDim2.new(1, 0, 0, 38)
		wikisearchTopBar.Image = "rbxassetid://4595286933"
		wikisearchTopBar.ImageColor3 = stringtocolor(SettingsT.DarkContrast)
		wikisearchTopBar.ScaleType = Enum.ScaleType.Slice
		wikisearchTopBar.SliceCenter = Rect.new(4, 4, 296, 296)

		wikisearchTBText.Parent = wikisearchTopBar
		wikisearchTBText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		wikisearchTBText.BackgroundTransparency = 1.000
		wikisearchTBText.Size = UDim2.new(0, 671, 0, 38)
		wikisearchTBText.Font = Enum.Font.Jura
		wikisearchTBText.Text = "Select Item To View Info"
		wikisearchTBText.TextColor3 = stringtocolor(SettingsT.TextColor)
		wikisearchTBText.TextSize = 18.000

		wikisearchglow = Instance.new("ImageLabel")
		wikisearchglow.Name = "Glow"
		wikisearchglow.BackgroundTransparency = 1
		wikisearchglow.Position = UDim2.new(0, -15, 0, -15)
		wikisearchglow.Size = UDim2.new(1, 30, 1, 30)
		wikisearchglow.ZIndex = 0
		wikisearchglow.Image = "rbxassetid://5028857084"
		wikisearchglow.ImageColor3 = stringtocolor(SettingsT.Glow)
		wikisearchglow.ScaleType = Enum.ScaleType.Slice
		wikisearchglow.SliceCenter = Rect.new(24, 24, 276, 276)
		wikisearchglow.Parent = wikisearch

		wikisearchSearchBar.Name = "wikisearchSearchBar"
		wikisearchSearchBar.Parent = wikisearch
		wikisearchSearchBar.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		wikisearchSearchBar.Position = UDim2.new(0.12071535, 0, 0.110843375, 0)
		wikisearchSearchBar.Size = UDim2.new(0, 571, 0, 22)
		wikisearchSearchBar.Font = Enum.Font.Jura
		wikisearchSearchBar.PlaceholderColor3 = stringtocolor(SettingsT.TextColor)
		wikisearchSearchBar.PlaceholderText = "Search..."
		wikisearchSearchBar.Text = ""
		wikisearchSearchBar.TextColor3 = stringtocolor(SettingsT.TextColor)
		wikisearchSearchBar.TextScaled = true
		wikisearchSearchBar.TextSize = 14.000
		wikisearchSearchBar.TextWrapped = true
		wikisearchSearchBar.TextXAlignment = Enum.TextXAlignment.Left

		UICorner_6.Parent = wikisearchSearchBar

		UITextSizeConstraint_3.Parent = wikisearchSearchBar
		UITextSizeConstraint_3.MaxTextSize = 15

		UIPadding_3.Parent = wikisearchSearchBar
		UIPadding_3.PaddingLeft = UDim.new(0, 10)

		backwikisearch.Name = "backwikisearch"
		backwikisearch.Parent = wikisearch
		backwikisearch.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		backwikisearch.Position = UDim2.new(0.0178837553, 0, 0.110843375, 0)
		backwikisearch.Size = UDim2.new(0, 57, 0, 22)
		backwikisearch.AutoButtonColor = false
		backwikisearch.Font = Enum.Font.Jura
		backwikisearch.Text = "Back"
		backwikisearch.TextColor3 = stringtocolor(SettingsT.TextColor)
		backwikisearch.TextSize = 14.000

		backwikisearch.MouseEnter:Connect(function()
		    local tweentrans = TweenService:Create(backwikisearch, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3})
		    tweentrans:Play()
		end)

		backwikisearch.MouseLeave:Connect(function()
		    local tweentrans = TweenService:Create(backwikisearch, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0})
		    tweentrans:Play()
		end)

		UICorner_7.CornerRadius = UDim.new(0, 5)
		UICorner_7.Parent = backwikisearch

		masterwikiscroll.Name = "masterwikiscroll"
		masterwikiscroll.Parent = wikisearch
		masterwikiscroll.Active = true
		masterwikiscroll.BackgroundColor3 = stringtocolor(SettingsT.Background)
		masterwikiscroll.BackgroundTransparency = 1.000
		masterwikiscroll.BorderColor3 = Color3.fromRGB(27, 42, 53)
		masterwikiscroll.BorderSizePixel = 0
		masterwikiscroll.Position = UDim2.new(0.00894187763, 0, 0.187951803, 0)
		masterwikiscroll.Size = UDim2.new(0, 659, 0, 330)
		masterwikiscroll.ScrollBarThickness = 3
		masterwikiscroll.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
		masterwikiscroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
		masterwikiscroll.CanvasSize = UDim2.new(0,0,0,0)

		UIPadding.Parent = masterwikiscroll
		UIPadding.PaddingLeft = UDim.new(0, -6)

		UIListLayout.Parent = masterwikiscroll
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0,15)

		backwikisearch.MouseEnter:Connect(function()
		    local tweentrans = TweenService:Create(backwikisearch, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3})
		    tweentrans:Play()
		end)

		backwikisearch.MouseLeave:Connect(function()
		    local tweentrans = TweenService:Create(backwikisearch, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0})
		    tweentrans:Play()
		end)



		function getItemName(itemID, shiny)
		    for i,v in next, game.ReplicatedStorage.Items:GetChildren() do
		        if shiny == nil or not shiny then
		            if v:FindFirstChild("ItemId") and v.ItemId.Value == itemID then
		                return v.Name
		            end
		        elseif shiny then
		            if v:FindFirstChild("ItemId") and v.ShinyId.Value == itemID then
		                return v.Name
		            end
		        end
		    end
		end

		--[[
		    Transition Buttons
		--]]

		backwikisearch.MouseButton1Click:Connect(function()
		    transitionBack(wikisearch, game.CoreGui["Ironic's Miner's Haven Ghost Client - v"..SettingsT.ScriptVersion].Main, nil, wikisearch.Glow)
		    --backwikisearch.TextTransparency = 0
		    --backwikisearch.BackgroundTransparency = 0
		end)

		backwiki.MouseButton1Click:Connect(function() -- Upgraders
		    transitionToWikiPg(wikiframe, wikisearch, nil, wikisearchglow)
		end)

		backwikiMine.MouseButton1Click:Connect(function() -- Mines
		    transitionToWikiPg(wikiframeMine, wikisearch, nil, wikisearchglow)
		end)

		backwikiFurn.MouseButton1Click:Connect(function() -- Furnace 
		    transitionToWikiPg(wikiframeFurn, wikisearch, nil, wikisearchglow)
		end)

		local transfer = false
		shinywiki.MouseButton1Click:Connect(function() -- Upgraders
		    if shinywiki.Text == "Shiny" then
		        transfer = true
		        shinywiki.Text = "Normal"
		    elseif shinywiki.Text == "Normal" then
		        transfer = false
		        shinywiki.Text = "Shiny"
		    end
		    local ShinyItemName = ''
		    local ItemName = ''
		    if transfer then
		        for i,v in pairs(shinywiki.Parent:GetChildren()) do
		            if v.Name ~= "TextButton" then
		                if v:FindFirstChild("RequiredEvo") then
		                    ShinyItemName = getItemName(v.RequiredEvo.Value)
		                else
		                    ShinyItemName = getItemName(v.ShinyId.Value)
		                end
		            end
		        end
		        if _G.cam ~= nil then
		            _G.cam:Disconnect()
		        end
		        newItem(ShinyItemName, true)
		    elseif not transfer then
		        for i,v in pairs(shinywiki.Parent:GetChildren()) do
		            if v.Name ~= "TextButton" then
		                if v:FindFirstChild("RequiredEvo") then
		                    ItemName = getItemName(v.RequiredEvo.Value)
		                else
		                    ItemName = getItemName(v.NonShinyId.Value)
		                end
		            end
		        end
		        if _G.cam ~= nil then
		            _G.cam:Disconnect()
		        end
		        newItem(ItemName, false)
		    end
		end)
		shinywikiFurn.MouseButton1Click:Connect(function() -- Furnaces
		    if shinywikiFurn.Text == "Shiny" then
		        transfer = true
		        shinywikiFurn.Text = "Normal"
		    elseif shinywikiFurn.Text == "Normal" then
		        transfer = false
		        shinywikiFurn.Text = "Shiny"
		    end
		    local ShinyItemName = ''
		    local ItemName = ''
		    if transfer then
		        for i,v in pairs(shinywikiFurn.Parent:GetChildren()) do
		            if v.Name ~= "TextButton" then
		                if v:FindFirstChild("RequiredEvo") then
		                    ShinyItemName = getItemName(v.RequiredEvo.Value)
		                else
		                    ShinyItemName = getItemName(v.ShinyId.Value)
		                end
		            end
		        end
		        if _G.cam ~= nil then
		            _G.cam:Disconnect()
		        end
		        newFurn(ShinyItemName, true)
		    elseif not transfer then
		        for i,v in pairs(shinywikiFurn.Parent:GetChildren()) do
		            if v.Name ~= "TextButton" then
		                if v:FindFirstChild("RequiredEvo") then
		                    ItemName = getItemName(v.RequiredEvo.Value)
		                else
		                    ItemName = getItemName(v.NonShinyId.Value)
		                end
		            end
		        end
		        if _G.cam ~= nil then
		            _G.cam:Disconnect()
		        end
		        newFurn(ItemName, false)
		    end
		end)
		shinywikiMine.MouseButton1Click:Connect(function() -- Mines
		    if shinywikiMine.Text == "Shiny" then
		        transfer = true
		        shinywikiMine.Text = "Normal"
		    elseif shinywikiMine.Text == "Normal" then
		        transfer = false
		        shinywikiMine.Text = "Shiny"
		    end
		    local ShinyItemName = ''
		    local ItemName = ''
		    if transfer then
		        for i,v in pairs(shinywikiMine.Parent:GetChildren()) do
		            if v.Name ~= "TextButton" then
		                if v:FindFirstChild("RequiredEvo") then
		                    ShinyItemName = getItemName(v.RequiredEvo.Value)
		                else
		                    ShinyItemName = getItemName(v.ShinyId.Value)
		                end
		            end
		        end
		        if _G.cam ~= nil then
		            _G.cam:Disconnect()
		        end
		        newMine(ShinyItemName, true)
		    elseif not transfer then
		        for i,v in pairs(shinywikiMine.Parent:GetChildren()) do
		            if v.Name ~= "TextButton" then
		                if v:FindFirstChild("RequiredEvo") then
		                    ItemName = getItemName(v.RequiredEvo.Value)
		                else
		                    ItemName = getItemName(v.NonShinyId.Value)
		                end
		            end
		        end
		        if _G.cam ~= nil then
		            _G.cam:Disconnect()
		        end
		        newMine(ItemName, false)
		    end
		end)

		local HttpService = game:GetService("HttpService")
		local upgraderitemdata = game:HttpGet("https://raw.githubusercontent.com/VeronicVR/MHScripts/main/wiki%20reference.json")
		local upgraderalldata = HttpService:JSONDecode(upgraderitemdata)
		local furnaceitemdata = game:HttpGet("https://raw.githubusercontent.com/VeronicVR/MHScripts/main/wiki%20reference%20furnaces.json")
		local furnacealldata = HttpService:JSONDecode(furnaceitemdata)
		local mineitemdata = game:HttpGet("https://raw.githubusercontent.com/VeronicVR/MHScripts/main/wiki%20reference%20mines.json")
		local minealldata = HttpService:JSONDecode(mineitemdata)


		function addValueLabel(name, order, text)
		    setthreadcaps(8)
		    local valuestab = Instance.new("TextLabel")
		    valuestab.Parent = sfvalues
		    valuestab.Size = UDim2.new(0,214,0,27)
		    valuestab.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		    valuestab.BackgroundTransparency = 1
		    valuestab.TextColor3 = stringtocolor(SettingsT.TextColor)
		    valuestab.Font = Enum.Font.Jura
		    valuestab.TextScaled = true
		    valuestab.Text = text
		    valuestab.LayoutOrder = order
		    valuestab.Name = name
		
		    local valuescorn = Instance.new("UICorner")
		    valuescorn.Parent = valuestab
		
		    local valuesCon = Instance.new("UITextSizeConstraint")
		    valuesCon.MaxTextSize = 18
		    valuesCon.Parent = valuestab
		end

		function newItem(name, shiny) 
		
		    topbarwikitext.Text = name
		    masterscroll.CanvasSize = UDim2.new(0,0,0,0)
		    local TweenService = game:GetService("TweenService")
		    local RunService = game:GetService("RunService")
		    for i,v in pairs(viewport:GetChildren()) do
		        if v:IsA("Model") then
		            v:Destroy()
		        end
		    end
		    for i,v in pairs(wikiframe:GetChildren()) do
		        if v:isA("Model") then
		            v:Destroy()
		        end
		    end
		    for i,v in pairs(wikiscreenGui.Upgraders.masterscroll.Values:GetChildren()) do
		        if v:isA("TextLabel") then
		            v:Destroy()
		        end
		    end
		    local item = game:GetService("ReplicatedStorage").Items[name]
		
		    local itemport = item:Clone()
		    itemport.Parent = viewport
		    itemport.PrimaryPart = itemport.Hitbox
		    local target = itemport.Hitbox 
		    local camera = viewcam
		    camera.CameraType = Enum.CameraType.Scriptable
		
		    local rotationAngle = Instance.new("NumberValue")
		    local tweenComplete = false
		    --local modelCF, modelSize = itemport:GetBoundingBox()
		    local modelSize = itemport.Hitbox.Size
		    local diagonal = 0
		    local maxExtent = math.max(modelSize.x, modelSize.y, modelSize.z)
		    local tan = math.tan(math.rad(camera.FieldOfView/2))
		
		    if (maxExtent == modelSize.x) then
		        diagonal = math.sqrt(modelSize.y*modelSize.y + modelSize.z*modelSize.z)/2
		    elseif (maxExtent == modelSize.y) then
		        diagonal = math.sqrt(modelSize.x*modelSize.x + modelSize.z*modelSize.z)/2
		    else
		        diagonal = math.sqrt(modelSize.x*modelSize.x + modelSize.y*modelSize.y)/2
		    end
		
		    local minDist = (maxExtent/2)/tan + diagonal
		    local cameraOffset = Vector3.new(0,diagonal*0.75, minDist)
		    local rotationTime = 15  -- Time in seconds
		    local rotationDegrees = 360
		    local rotationRepeatCount = -1  -- Use -1 for infinite repeats
		    local lookAtTarget = true  -- Whether the camera tilts to point directly at the target
		
		    local function updateCamera()
		        if not target then return end
		        camera.Focus = target.CFrame
		        local rotatedCFrame = CFrame.Angles(0, math.rad(rotationAngle.Value), 0)
		        rotatedCFrame = CFrame.new(target.Position) * rotatedCFrame
		        camera.CFrame = rotatedCFrame:ToWorldSpace(CFrame.new(cameraOffset))
		        if lookAtTarget == true then
		            camera.CFrame = CFrame.new(camera.CFrame.Position, target.Position)
		        end
		    end
		
		    local tweenInfo = TweenInfo.new(rotationTime, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, rotationRepeatCount)
		    local tween = TweenService:Create(rotationAngle, tweenInfo, {Value=rotationDegrees})
		    tween.Completed:Connect(function()
		        tweenComplete = true
		    end)
		    tween:Play()
		
		    _G.cam = RunService.RenderStepped:Connect(function()
		        if tweenComplete == false then
		            updateCamera()
		        end
		    end)
		    local HttpService = game:GetService("HttpService")
		    local itemdata = game:HttpGet("https://raw.githubusercontent.com/VeronicVR/MHScripts/main/wiki%20reference.json")
		
		    if shiny then 
		        print("Shiny Selected, skipping")
		    else
		        local alldata = HttpService:JSONDecode(itemdata)
		        local rimd
		        for i,v in pairs(alldata) do
		            if i == name then
		                rimd = v
		            end
		        end
		        local tier = itemport.Tier.Value
		        tier = game:GetService("ReplicatedStorage").Tiers[tier].TierName.Value
		        tierlabel.Text = tier
		        sfeffects.Size = UDim2.new(0,214,0,102)
		        sfdrawbacks.Size = UDim2.new(0,214,0,60)
		        sfsource.Size = UDim2.new(0,214,0,51)
		        sfupgrade.Size = UDim2.new(0,214,0,51)
		        if rimd.effects ~= nil then 
		            effectsTxt.Text = rimd.effects
		        end
		        drawbacksTxt.Text = rimd.drawbacks
		        sfdrawbacks.Visible = true
		        drawbackstab.Visible = true
		        if rimd.drawbacks == "N/A" then
		            sfdrawbacks.Visible = false
		            drawbackstab.Visible = false
		        end
		        if itemport:FindFirstChild("RebirthRequirement") then
		            sourceTxt.Text = rimd.source .. " (Life " .. itemport.RebirthRequirement.Value .."+)"
		        elseif itemport:FindFirstChild("UnlockAt") then
		            sourceTxt.Text = rimd.source .. " (Life " .. itemport.UnlockAt.Value .."+)"
		        else   
		            sourceTxt.Text = rimd.source
		        end
		        if itemport:FindFirstChild("EnchantCost") then
		            for i,v in pairs(itemport.EnchantCost:GetChildren()) do
		                if tonumber(v.Name) ~= nil then
		                    for o,r in pairs(game.ReplicatedStorage.Items:GetChildren()) do
		                        if r.ItemId.Value == tonumber(v.Name) then
		                            sourceTxt.Text = sourceTxt.Text .. "x" .. v.Value .. " " .. r.Name
		                        end
		                    end
		                elseif v.Name == "Shards" then
		                    sourceTxt.Text = sourceTxt.Text .. v.Value .. " Shards"
		                end
					
		                if i ~= #itemport.EnchantCost:GetChildren() then
		                    sourceTxt.Text = sourceTxt.Text .. "\n"
		                end
		            end
		        end
		        if tier == "Evolved Reborn" or tier == "Adv. Evolution" then
		            for i,v in pairs(game.ReplicatedStorage.Items:GetChildren()) do
		                if v:FindFirstChild("RequiredEvo") then
		                    if v.RequiredEvo.Value == itemport.ItemId.Value then
		                        local evoshiny = Instance.new("IntValue")
		                        evoshiny.Parent = itemport
		                        evoshiny.Value = v.ItemId.Value
		                        evoshiny.Name = "ShinyId"
		                    end
		                end
		            end
		        end
		        if tier == "Reborn" or tier == "Adv. Reborn" then
		            sourceTxt.Text = rimd.source .. " (Life " .. itemport.ReqLife.Value .."+)"
		            addValueLabel("Rarity", 0, "Rarity: " .. itemport.RebornChance.Value)
		            if itemport:FindFirstChild("ShardSalvagePrice") then
		                addValueLabel("Salvage", 0, "Salvage Yield: " .. itemport.ShardSalvagePrice.Value)
		            end
		            if itemport:FindFirstChild("RebornShopPrice") then
		                addValueLabel("rebshop", 0, "Craftsman Cost: " .. itemport.RebornShopPrice.Value)
		            end
		        end
		        upgradeTxt.Text = rimd.limit
		        if tier == "Common" or tier == "Uncommon" or tier == "Rare" or tier == "Super Rare" or tier == "Unique" or tier == "Epic" or tier == "Legendary" or tier == "Mythic" or tier == "Divine" or tier == "Almighty" then
		            addValueLabel("Cost", 0, "Cost: " .. MoneyLib.HandleMoney(itemport.Cost.Value))
		        end
		        if tier == "Refined" or tier == "Premium" then
		            if itemport:FindFirstChild("Crystals") then
		            addValueLabel("Cost", 0, "Cost: " .. itemport.Crystals.Value .."uC")
		            end
		        end
		        if itemport:FindFirstChild("BlueprintPrice") then
		            addValueLabel("blueprint", 0, "Blueprint: " .. string.gsub(MoneyLib.HandleMoney(itemport.BlueprintPrice.Value), "%$", "") .. " RP")
		        end
		        if tier == "Contraband" then
		            addValueLabel("Cost", 0, rimd.cost)
		        end
		        addValueLabel("RebProof", 1, rimd.reb)
		        addValueLabel("SacbProof", 2, rimd.sac)
		        addValueLabel("ItemId", 3, "Item Id: " .. itemport.ItemId.Value)
		        if itemport:FindFirstChild("ShinyId") then
		            addValueLabel("ShinyId", 3, "Shiny Id: " .. itemport.ShinyId.Value)
		        end
		        if tier == "Common" or tier == "Uncommon" or tier == "Rare" or tier == "Super Rare" or tier == "Unique" or tier == "Epic" or tier == "Legendary" or tier == "Mythic" or tier == "Divine" or tier == "Almighty" then
		        addValueLabel("RP Required", 7, "RP Required: " .. string.gsub(MoneyLib.HandleMoney(itemport.ReqPoints.Value), "%$", ""))
		        end
		        local oneconv = false
		        for i,v in pairs(itemport:GetDescendants()) do
		            if v.Name == "ConveyorSpeed" and oneconv == false then
		                oneconv = true
		                addValueLabel("ConvSpeed", 8, "Conveyor Speed: " .. math.round(v.Value*10) .. "%")
		            end
		        end
		        shinywiki.Visible = false
		        if itemport:FindFirstChild("ShinyId") then
		            shinywiki.Visible = true
		        end
		        if drawbacksTxt.AbsoluteSize.Y < 60 then
		            sfdrawbacks.Size = UDim2.new(0,sfdrawbacks.Size.X.Offset,0,drawbacksTxt.AbsoluteSize.Y+1)
		        end
		        if effectsTxt.AbsoluteSize.Y < 102 then
		            sfeffects.Size = UDim2.new(0,sfeffects.Size.X.Offset,0,effectsTxt.AbsoluteSize.Y+1)
		        end
		        if sourceTxt.AbsoluteSize.Y < 51 then
		            sfsource.Size = UDim2.new(0,sfsource.Size.X.Offset,0,sourceTxt.AbsoluteSize.Y+1)
		        end
		        if upgradeTxt.AbsoluteSize.Y < 51 then
		            sfupgrade.Size = UDim2.new(0,sfupgrade.Size.X.Offset,0,upgradeTxt.AbsoluteSize.Y+1)
		        end
		        masterscroll.CanvasSize = UDim2.new(0,0,0,masterlayout.AbsoluteContentSize.Y)
		    end
		end

		function addValueLabelMine(name, order, text)
		    setthreadcaps(8)
		    local valuestab = Instance.new("TextLabel")
		    valuestab.Parent = sfvaluesMine
		    valuestab.Size = UDim2.new(0,214,0,27)
		    valuestab.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		    valuestab.BackgroundTransparency = 1
		    valuestab.TextColor3 = stringtocolor(SettingsT.TextColor)
		    valuestab.Font = Enum.Font.Jura
		    valuestab.TextScaled = true
		    valuestab.Text = text
		    valuestab.LayoutOrder = order
		    valuestab.Name = name
		
		    local valuescorn = Instance.new("UICorner")
		    valuescorn.Parent = valuestab
		
		    local valuesCon = Instance.new("UITextSizeConstraint")
		    valuesCon.MaxTextSize = 18
		    valuesCon.Parent = valuestab
		end

		function newMine(name, shiny) 
		    topbarwikitextMine.Text = name
		    masterscrollMine.CanvasSize = UDim2.new(0,0,0,0)
		    local TweenService = game:GetService("TweenService")
		    local RunService = game:GetService("RunService")
		    for i,v in pairs(viewportMine:GetChildren()) do
		        if v:IsA("Model") then
		            v:Destroy()
		        end
		    end
		    for i,v in pairs(wikiframe:GetChildren()) do
		        if v:isA("Model") then
		            v:Destroy()
		        end
		    end
		    for i,v in pairs(wikiscreenGui.Mines.masterscroll.Values:GetChildren()) do
		        if v:isA("TextLabel") then
		            v:Destroy()
		        end
		    end
		    local item = game:GetService("ReplicatedStorage").Items[name]
		    local itemportMine = item:Clone()
		    itemportMine.Parent = viewportMine
		    itemportMine.PrimaryPart = itemportMine.Hitbox
		    local target = itemportMine.Hitbox 
		    local camera = viewcam
		    camera.CameraType = Enum.CameraType.Scriptable
		
		    local rotationAngle = Instance.new("NumberValue")
		    local tweenComplete = false
		    --local modelCF, modelSize = itemportMine:GetBoundingBox()
		    local modelSize = itemportMine.Hitbox.Size
		    local diagonal = 0
		    local maxExtent = math.max(modelSize.x, modelSize.y, modelSize.z)
		    local tan = math.tan(math.rad(camera.FieldOfView/2))
		
		    if (maxExtent == modelSize.x) then
		        diagonal = math.sqrt(modelSize.y*modelSize.y + modelSize.z*modelSize.z)/2
		    elseif (maxExtent == modelSize.y) then
		        diagonal = math.sqrt(modelSize.x*modelSize.x + modelSize.z*modelSize.z)/2
		    else
		        diagonal = math.sqrt(modelSize.x*modelSize.x + modelSize.y*modelSize.y)/2
		    end
		
		    local minDist = (maxExtent/2)/tan + diagonal
		    local cameraOffset = Vector3.new(0,diagonal*0.75, minDist)
		    local rotationTime = 15  -- Time in seconds
		    local rotationDegrees = 360
		    local rotationRepeatCount = -1  -- Use -1 for infinite repeats
		    local lookAtTarget = true  -- Whether the camera tilts to point directly at the target
		
		    local function updateCamera()
		        if not target then return end
		        camera.Focus = target.CFrame
		        local rotatedCFrame = CFrame.Angles(0, math.rad(rotationAngle.Value), 0)
		        rotatedCFrame = CFrame.new(target.Position) * rotatedCFrame
		        camera.CFrame = rotatedCFrame:ToWorldSpace(CFrame.new(cameraOffset))
		        if lookAtTarget == true then
		            camera.CFrame = CFrame.new(camera.CFrame.Position, target.Position)
		        end
		    end
		
		    local tweenInfo = TweenInfo.new(rotationTime, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, rotationRepeatCount)
		    local tween = TweenService:Create(rotationAngle, tweenInfo, {Value=rotationDegrees})
		    tween.Completed:Connect(function()
		        tweenComplete = true
		    end)
		    tween:Play()
		
		    _G.cam = RunService.RenderStepped:Connect(function()
		        if tweenComplete == false then
		            updateCamera()
		        end
		    end)
		    local HttpService = game:GetService("HttpService")
		    local itemdata = game:HttpGet("https://raw.githubusercontent.com/VeronicVR/MHScripts/main/wiki%20reference%20mines.json")
		
		    if shiny then 
		        print("Shiny selected, skipping")
		    else
		        local alldata = HttpService:JSONDecode(itemdata)
		        local rimd
		        for i,v in pairs(alldata) do
		            if i == name then
		                rimd = v
		            end
		        end
		        local tier = itemportMine.Tier.Value
		        tier = game:GetService("ReplicatedStorage").Tiers[tier].TierName.Value
		        tierlabelMine.Text = tier
		        sfeffectsMine.Size = UDim2.new(0,214,0,102)
		        sfdrawbacksMine.Size = UDim2.new(0,214,0,60)
		        sfsourceMine.Size = UDim2.new(0,214,0,51)
		        sforevalueMine.Size = UDim2.new(0,214,0,102)
		        sforesizeMine.Size = UDim2.new(0,214,0,102)
		        sfdroprateMine.Size = UDim2.new(0,214,0,102)
		        effectsTxtMine.Text = rimd.effects
		        drawbacksTxtMine.Text = rimd.drawbacks
		        orevalueTxtMine.Text = rimd.value
		        droprateTxtMine.Text = rimd.droprate
		        oresizeTxtMine.Text = rimd.size
		        if itemportMine:FindFirstChild("RebirthRequirement") then
		            sourceTxtMine.Text = rimd.source .. " (Life " .. itemportMine.RebirthRequirement.Value .."+)"
		        elseif itemportMine:FindFirstChild("UnlockAt") then
		            sourceTxtMine.Text = rimd.source .. " (Life " .. itemportMine.UnlockAt.Value .."+)"
		        else   
		            sourceTxtMine.Text = rimd.source
		        end
		        if itemportMine:FindFirstChild("EnchantCost") then
		            for i,v in pairs(itemportMine.EnchantCost:GetChildren()) do
		                if tonumber(v.Name) ~= nil then
		                    for o,r in pairs(game.ReplicatedStorage.Items:GetChildren()) do
		                        if r.ItemId.Value == tonumber(v.Name) then
		                            sourceTxtMine.Text = sourceTxtMine.Text .. "x" .. v.Value .. " " .. r.Name
		                        end
		                    end
		                elseif v.Name == "Shards" then
		                    sourceTxtMine.Text = sourceTxtMine.Text .. v.Value .. " Shards"
		                end
					
		                if i ~= #itemportMine.EnchantCost:GetChildren() then
		                    sourceTxtMine.Text = sourceTxtMine.Text .. "\n"
		                end
		            end
		        end
		        if tier == "Evolved Reborn" or tier == "Adv. Evolution" then
		            for i,v in pairs(game.ReplicatedStorage.Items:GetChildren()) do
		                if v:FindFirstChild("RequiredEvo") then
		                    if v.RequiredEvo.Value == itemportMine.ItemId.Value then
		                        local evoshiny = Instance.new("IntValue")
		                        evoshiny.Parent = itemportMine
		                        evoshiny.Value = v.ItemId.Value
		                        evoshiny.Name = "ShinyId"
		                    end
		                end
		            end
		        end
		        if tier == "Reborn" or tier == "Adv. Reborn" then
		            sourceTxtMine.Text = rimd.source .. " (Life " .. itemportMine.ReqLife.Value .."+)"
		            addValueLabelMine("Rarity", 0, "Rarity: " .. itemportMine.RebornChance.Value)
		            if itemportMine:FindFirstChild("ShardSalvagePrice") then
		                addValueLabelMine("Salvage", 0, "Salvage Yield: " .. itemportMine.ShardSalvagePrice.Value)
		            end
		            if itemportMine:FindFirstChild("RebornShopPrice") then
		                addValueLabelMine("rebshop", 0, "Craftsman Cost: " .. itemportMine.RebornShopPrice.Value)
		            end
		        end
		        if tier == "Common" or tier == "Uncommon" or tier == "Rare" or tier == "Super Rare" or tier == "Unique" or tier == "Epic" or tier == "Legendary" or tier == "Mythic" or tier == "Divine" or tier == "Almighty" then
		            addValueLabelMine("Cost", 0, "Cost: " .. MoneyLib.HandleMoney(itemportMine.Cost.Value))
		        end
		        if tier == "Refined" or tier == "Premium" then
		            if itemportMine:FindFirstChild("Crystals") then
		            addValueLabelMine("Cost", 0, "Cost: " .. itemportMine.Crystals.Value .."uC")
		            end
		        end
		        if itemportMine:FindFirstChild("BlueprintPrice") then
		            addValueLabelMine("blueprint", 0, "Blueprint: " .. string.gsub(MoneyLib.HandleMoney(itemportMine.BlueprintPrice.Value), "%$", "") .. " RP")
		        end
		        if tier == "Contraband" then
		            addValueLabelMine("Cost", 0, rimd.cost)
		        end
		        addValueLabelMine("CellFurn",1, rimd.cell)
		        addValueLabelMine("RebProof", 1, rimd.reb)
		        addValueLabelMine("SacbProof", 2, rimd.sac)
		        addValueLabelMine("ItemId", 3, "Item Id: " .. itemportMine.ItemId.Value)
		        if itemportMine:FindFirstChild("ShinyId") then
		            addValueLabelMine("ShinyId", 3, "Shiny Id: " .. itemportMine.ShinyId.Value)
		        end
		        if tier == "Common" or tier == "Uncommon" or tier == "Rare" or tier == "Super Rare" or tier == "Unique" or tier == "Epic" or tier == "Legendary" or tier == "Mythic" or tier == "Divine" or tier == "Almighty" then
		        addValueLabelMine("RP Required", 7, "RP Required: " .. string.gsub(MoneyLib.HandleMoney(itemportMine.ReqPoints.Value), "%$", ""))
		        end
		        local oneconv = false
		        for i,v in pairs(itemportMine:GetDescendants()) do
		            if v.Name == "ConveyorSpeed" and oneconv == false then
		                oneconv = true
		                addValueLabelMine("ConvSpeed", 8, "Conveyor Speed: " .. math.round(v.Value*10) .. "%")
		            end
		        end
		        shinywikiMine.Visible = false
		        if itemportMine:FindFirstChild("ShinyId") then
		            shinywikiMine.Visible = true
		        end
		        if drawbacksTxtMine.AbsoluteSize.Y < 60 then
		            sfdrawbacksMine.Size = UDim2.new(0,sfdrawbacksMine.Size.X.Offset,0,drawbacksTxtMine.AbsoluteSize.Y+1)
		        end
		        if effectsTxtMine.AbsoluteSize.Y < 102 then
		            sfeffectsMine.Size = UDim2.new(0,sfeffectsMine.Size.X.Offset,0,effectsTxtMine.AbsoluteSize.Y+1)
		        end
		        if sourceTxtMine.AbsoluteSize.Y < 51 then
		            sfsourceMine.Size = UDim2.new(0,sfsourceMine.Size.X.Offset,0,sourceTxtMine.AbsoluteSize.Y+1)
		        end
		        sforesizeMine.Size = UDim2.new(0,sforesizeMine.Size.X.Offset,0,0)
		        sfdroprateMine.Size = UDim2.new(0,sfdroprateMine.Size.X.Offset,0,0)
		        sforevalueMine.Size = UDim2.new(0,sforevalueMine.Size.X.Offset,0,0)
		        sfeffectsMine.Visible = true
		        effectstabMine.Visible = true
		        sfdrawbacksMine.Visible = true
		        drawbackstabMine.Visible = true
		        if rimd.effects == "N/A" then
		            sfeffectsMine.Visible = false
		            effectstabMine.Visible = false
		        end
		        if rimd.drawbacks == "N/A" then
		            sfdrawbacksMine.Visible = false
		            drawbackstabMine.Visible = false
		        end
		        masterscrollMine.CanvasSize = UDim2.new(0,0,0,masterlayoutMine.AbsoluteContentSize.Y)
		    end
		end

		function addValueLabelFurn(name, order, text)
		    setthreadcaps(8)
		    local valuestab = Instance.new("TextLabel")
		    valuestab.Parent = sfvaluesFurn
		    valuestab.Size = UDim2.new(0,214,0,27)
		    valuestab.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		    valuestab.BackgroundTransparency = 1
		    valuestab.TextColor3 = stringtocolor(SettingsT.TextColor)
		    valuestab.Font = Enum.Font.Jura
		    valuestab.TextScaled = true
		    valuestab.Text = text
		    valuestab.LayoutOrder = order
		    valuestab.Name = name
		
		    local valuescorn = Instance.new("UICorner")
		    valuescorn.Parent = valuestab
		
		    local valuesCon = Instance.new("UITextSizeConstraint")
		    valuesCon.MaxTextSize = 18
		    valuesCon.Parent = valuestab
		end

		function newFurn(name, shiny) 
		    topbarwikitextFurn.Text = name
		    masterscrollFurn.CanvasSize = UDim2.new(0,0,0,0)
		    local TweenService = game:GetService("TweenService")
		    local RunService = game:GetService("RunService")
		    for i,v in pairs(viewportFurn:GetChildren()) do
		        if v:IsA("Model") then
		            v:Destroy()
		        end
		    end
		    for i,v in pairs(wikiframe:GetChildren()) do
		        if v:isA("Model") then
		            v:Destroy()
		        end
		    end
		    for i,v in pairs(wikiscreenGui.Furnaces.masterscroll.Values:GetChildren()) do
		        if v:isA("TextLabel") then
		            v:Destroy()
		        end
		    end
		    local item = game:GetService("ReplicatedStorage").Items[name]
		    local itemportFurn = item:Clone()
		    itemportFurn.Parent = viewportFurn
		    itemportFurn.PrimaryPart = itemportFurn.Hitbox
		    local target = itemportFurn.Hitbox 
		    local camera = viewcam
		    camera.CameraType = Enum.CameraType.Scriptable
		
		    local rotationAngle = Instance.new("NumberValue")
		    local tweenComplete = false
		    --local modelCF, modelSize = itemportFurn:GetBoundingBox()
		    local modelSize = itemportFurn.Hitbox.Size
		    local diagonal = 0
		    local maxExtent = math.max(modelSize.x, modelSize.y, modelSize.z)
		    local tan = math.tan(math.rad(camera.FieldOfView/2))
		
		    if (maxExtent == modelSize.x) then
		        diagonal = math.sqrt(modelSize.y*modelSize.y + modelSize.z*modelSize.z)/2
		    elseif (maxExtent == modelSize.y) then
		        diagonal = math.sqrt(modelSize.x*modelSize.x + modelSize.z*modelSize.z)/2
		    else
		        diagonal = math.sqrt(modelSize.x*modelSize.x + modelSize.y*modelSize.y)/2
		    end
		
		    local minDist = (maxExtent/2)/tan + diagonal
		    local cameraOffset = Vector3.new(0,diagonal*0.75, minDist)
		    local rotationTime = 15  -- Time in seconds
		    local rotationDegrees = 360
		    local rotationRepeatCount = -1  -- Use -1 for infinite repeats
		    local lookAtTarget = true  -- Whether the camera tilts to point directly at the target
		
		    local function updateCamera()
		        if not target then return end
		        camera.Focus = target.CFrame
		        local rotatedCFrame = CFrame.Angles(0, math.rad(rotationAngle.Value), 0)
		        rotatedCFrame = CFrame.new(target.Position) * rotatedCFrame
		        camera.CFrame = rotatedCFrame:ToWorldSpace(CFrame.new(cameraOffset))
		        if lookAtTarget == true then
		            camera.CFrame = CFrame.new(camera.CFrame.Position, target.Position)
		        end
		    end
		
		    local tweenInfo = TweenInfo.new(rotationTime, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, rotationRepeatCount)
		    local tween = TweenService:Create(rotationAngle, tweenInfo, {Value=rotationDegrees})
		    tween.Completed:Connect(function()
		        tweenComplete = true
		    end)
		    tween:Play()
		
		    _G.cam = RunService.RenderStepped:Connect(function()
		        if tweenComplete == false then
		            updateCamera()
		        end
		    end)
		    local HttpService = game:GetService("HttpService")
		    local itemdata = game:HttpGet("https://raw.githubusercontent.com/VeronicVR/MHScripts/main/wiki%20reference%20furnaces.json")
		
		    if shiny then 
		        print("Shiny selected, skipping")
		    else
		        local alldata = HttpService:JSONDecode(itemdata)
		        local rimd
		        for i,v in pairs(alldata) do
		            if i == name then
		                rimd = v
		            end
		        end
		        local tier = itemportFurn.Tier.Value
		        tier = game:GetService("ReplicatedStorage").Tiers[tier].TierName.Value
		        tierlabelFurn.Text = tier
		        sfeffectsFurn.Size = UDim2.new(0,214,0,102)
		        sfdrawbacksFurn.Size = UDim2.new(0,214,0,60)
		        sfsourceFurn.Size = UDim2.new(0,214,0,51)
		        sfRPFurn.Size = UDim2.new(0,214,0,102)
		        effectsTxtFurn.Text = rimd.effects
		        drawbacksTxtFurn.Text = rimd.drawbacks
		        RPTxtFurn.Text = rimd.rp
		        if itemportFurn:FindFirstChild("RebirthRequirement") then
		            sourceTxtFurn.Text = rimd.source .. " (Life " .. itemportFurn.RebirthRequirement.Value .."+)"
		        elseif itemportFurn:FindFirstChild("UnlockAt") then
		            sourceTxtFurn.Text = rimd.source .. " (Life " .. itemportFurn.UnlockAt.Value .."+)"
		        else   
		            sourceTxtFurn.Text = rimd.source
		        end
		        if itemportFurn:FindFirstChild("EnchantCost") then
		            for i,v in pairs(itemportFurn.EnchantCost:GetChildren()) do
		                if tonumber(v.Name) ~= nil then
		                    for o,r in pairs(game.ReplicatedStorage.Items:GetChildren()) do
		                        if r.ItemId.Value == tonumber(v.Name) then
		                            sourceTxtFurn.Text = sourceTxtFurn.Text .. "x" .. v.Value .. " " .. r.Name
		                        end
		                    end
		                elseif v.Name == "Shards" then
		                    sourceTxtFurn.Text = sourceTxtFurn.Text .. v.Value .. " Shards"
		                end
					
		                if i ~= #itemportFurn.EnchantCost:GetChildren() then
		                    sourceTxtFurn.Text = sourceTxtFurn.Text .. "\n"
		                end
		            end
		        end
		        if tier == "Evolved Reborn" or tier == "Adv. Evolution" then
		            for i,v in pairs(game.ReplicatedStorage.Items:GetChildren()) do
		                if v:FindFirstChild("RequiredEvo") then
		                    if v.RequiredEvo.Value == itemportFurn.ItemId.Value then
		                        local evoshiny = Instance.new("IntValue")
		                        evoshiny.Parent = itemportFurn
		                        evoshiny.Value = v.ItemId.Value
		                        evoshiny.Name = "ShinyId"
		                    end
		                end
		            end
		        end
		        if tier == "Reborn" or tier == "Adv. Reborn" then
		            sourceTxtFurn.Text = rimd.source .. " (Life " .. itemportFurn.ReqLife.Value .."+)"
		            addValueLabelFurn("Rarity", 0, "Rarity: " .. itemportFurn.RebornChance.Value)
		            if itemportFurn:FindFirstChild("ShardSalvagePrice") then
		                addValueLabelFurn("Salvage", 0, "Salvage Yield: " .. itemportFurn.ShardSalvagePrice.Value)
		            end
		            if itemportFurn:FindFirstChild("RebornShopPrice") then
		                addValueLabelFurn("rebshop", 0, "Craftsman Cost: " .. itemportFurn.RebornShopPrice.Value)
		            end
		        end
		        local testMoneyLib = require(game:GetService("ReplicatedStorage").MoneyLib)
		        if tier == "Common" or tier == "Uncommon" or tier == "Rare" or tier == "Super Rare" or tier == "Unique" or tier == "Epic" or tier == "Legendary" or tier == "Mythic" or tier == "Divine" or tier == "Almighty" then
		            addValueLabelFurn("Cost", 0, "Cost: " .. MoneyLib.HandleMoney(itemportFurn.Cost.Value))
		            --addValueLabelFurn("Cost", 0, "Cost: 0")
		        end
		        if tier == "Refined" or tier == "Premium" then
		            if itemportFurn:FindFirstChild("Crystals") then
		            addValueLabelFurn("Cost", 0, "Cost: " .. itemportFurn.Crystals.Value .."uC")
		            end
		        end
		        if itemportFurn:FindFirstChild("BlueprintPrice") then
		            addValueLabelFurn("blueprint", 0, "Blueprint: " .. string.gsub(MoneyLib.HandleMoney(itemportFurn.BlueprintPrice.Value), "%$", "") .. " RP")
		        end
		        if tier == "Contraband" then
		            addValueLabelFurn("Cost", 0, rimd.cost)
		        end
		        addValueLabelFurn("FurnType",1, rimd.furntype)
		        addValueLabelFurn("RebProof", 1, rimd.reb)
		        addValueLabelFurn("SacbProof", 2, rimd.sac)
		        addValueLabelFurn("ItemId", 3, "Item Id: " .. itemportFurn.ItemId.Value)
		        if itemportFurn:FindFirstChild("ShinyId") then
		            addValueLabelFurn("ShinyId", 3, "Shiny Id: " .. itemportFurn.ShinyId.Value)
		        end
		        if tier == "Common" or tier == "Uncommon" or tier == "Rare" or tier == "Super Rare" or tier == "Unique" or tier == "Epic" or tier == "Legendary" or tier == "Mythic" or tier == "Divine" or tier == "Almighty" then
		        addValueLabelFurn("RP Required", 7, "RP Required: " .. string.gsub(testMoneyLib.HandleMoney(itemportFurn.ReqPoints.Value), "%$", ""))
		        end
		        local oneconv = false
		        for i,v in pairs(itemportFurn:GetDescendants()) do
		            if v.Name == "ConveyorSpeed" and oneconv == false then
		                oneconv = true
		                addValueLabelFurn("ConvSpeed", 8, "Conveyor Speed: " .. math.round(v.Value*10) .. "%")
		            end
		        end
		        shinywikiFurn.Visible = false
		        if itemportFurn:FindFirstChild("ShinyId") then
		            shinywikiFurn.Visible = true
		        end
		        if drawbacksTxtFurn.AbsoluteSize.Y < 60 then
		            sfdrawbacksFurn.Size = UDim2.new(0,sfdrawbacksFurn.Size.X.Offset,0,drawbacksTxtFurn.AbsoluteSize.Y+1)
		        end
		        if effectsTxtFurn.AbsoluteSize.Y < 102 then
		            sfeffectsFurn.Size = UDim2.new(0,sfeffectsFurn.Size.X.Offset,0,effectsTxtFurn.AbsoluteSize.Y+1)
		        end
		        if sourceTxtFurn.AbsoluteSize.Y < 51 then
		            sfsourceFurn.Size = UDim2.new(0,sfsourceFurn.Size.X.Offset,0,sourceTxtFurn.AbsoluteSize.Y+1)
		        end
		        if RPTxtFurn.AbsoluteSize.Y < 102 then
		            sfRPFurn.Size = UDim2.new(0,sfRPFurn.Size.X.Offset,0,RPTxtFurn.AbsoluteSize.Y+1)
		        end
		        sfeffectsFurn.Visible = true
		        effectstabFurn.Visible = true
		        sfdrawbacksFurn.Visible = true
		        drawbackstabFurn.Visible = true
		        if rimd.effects == "N/A" then
		            sfeffectsFurn.Visible = false
		            effectstabFurn.Visible = false
		        end
		        if rimd.drawbacks == "N/A" then
		            sfdrawbacksFurn.Visible = false
		            drawbackstabFurn.Visible = false
		        end
		        masterscrollFurn.CanvasSize = UDim2.new(0,0,0,masterlayoutFurn.AbsoluteContentSize.Y)
		    end
		end

		for i,v in pairs(game.ReplicatedStorage.Tiers:GetChildren()) do
		    for o,r in pairs(game.ReplicatedStorage.Items:GetChildren()) do
		        if r.Tier.Value == tonumber(v.Name) and (upgraderalldata[r.Name] ~= nil or furnacealldata[r.Name] ~= nil or minealldata[r.Name] ~= nil) then
		            if masterwikiscroll:FindFirstChild(v.TierName.Value) == nil then
		                tiernameFrame = Instance.new("Frame")
		                UIListLayout_2 = Instance.new("UIListLayout")
		                TextLabel = Instance.new("TextLabel")
		                UICorner_2 = Instance.new("UICorner")
		                UITextSizeConstraint = Instance.new("UITextSizeConstraint")
		                itemslist = Instance.new("Frame")
		                local UIGridLayout = Instance.new("UIGridLayout")
					
		                tiernameFrame.Name = v.TierName.Value
		                tiernameFrame.Parent = masterwikiscroll
		                tiernameFrame.BackgroundColor3 = stringtocolor(SettingsT.TextColor)
		                tiernameFrame.BackgroundTransparency = 1.000
		                tiernameFrame.Position = UDim2.new(0.00910470448, 0, 0, 0)
		                tiernameFrame.Size = UDim2.new(0, 640, 0, 0)
		                tiernameFrame.AutomaticSize = Enum.AutomaticSize.Y
					
		                UIListLayout_2.Parent = tiernameFrame
		                UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Left
		                UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		                UIListLayout_2.Padding = UDim.new(0, 7)
					
		                TextLabel.Parent = tiernameFrame
		                TextLabel.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		                TextLabel.Size = UDim2.new(0, 640, 0, 28)
		                TextLabel.Font = Enum.Font.Jura
		                TextLabel.Text = v.TierName.Value
		                TextLabel.TextColor3 = stringtocolor(SettingsT.TextColor)
		                TextLabel.TextScaled = true
		                TextLabel.TextSize = 14.000
		                TextLabel.TextWrapped = true
					
		                UICorner_2.CornerRadius = UDim.new(0, 5)
		                UICorner_2.Parent = TextLabel
					
		                UITextSizeConstraint.Parent = TextLabel
		                UITextSizeConstraint.MaxTextSize = 18
					
		                itemslist.Name = "itemslist"
		                itemslist.Parent = tiernameFrame
		                itemslist.BackgroundColor3 = stringtocolor(SettingsT.TextColor)
		                itemslist.BackgroundTransparency = 1.000
		                itemslist.Size = UDim2.new(0, 659, 0, 0)
		                itemslist.AutomaticSize = Enum.AutomaticSize.Y
					
		                UIGridLayout.Parent = itemslist
		                UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
		                UIGridLayout.CellPadding = UDim2.new(0, 10, 0, 5)
		                UIGridLayout.CellSize = UDim2.new(0, 120, 0, 120)
		            end
		            local Frame = Instance.new("Frame")
		            local UICorner_3 = Instance.new("UICorner")
		            local ItemWikiButton = Instance.new("ImageButton")
		            local UICorner_4 = Instance.new("UICorner")
		            local TextLabel_2 = Instance.new("TextLabel")
		            local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
		            local UICorner_5 = Instance.new("UICorner")
		            local UIPadding_2 = Instance.new("UIPadding")
				
		            Frame.Parent = itemslist
		            Frame.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
		            Frame.Size = UDim2.new(0, 106, 0, 125)
		            Frame.Name = r.Name
				
		            UICorner_3.CornerRadius = UDim.new(0, 5)
		            UICorner_3.Parent = Frame
				
		            ItemWikiButton.Parent = Frame
		            ItemWikiButton.BackgroundColor3 = stringtocolor(SettingsT.TextColor)
		            ItemWikiButton.BackgroundTransparency = 1.000
		            ItemWikiButton.Position = UDim2.new(0.0419999994, 0, 0, 5)
		            ItemWikiButton.Size = UDim2.new(0, 110, 0, 110)
		            ItemWikiButton.Image = "rbxassetid://" .. r.ThumbnailId.Value
		            ItemWikiButton.AutoButtonColor = false
				
		            UICorner_4.CornerRadius = UDim.new(0, 5)
		            UICorner_4.Parent = ItemWikiButton
				
		            TextLabel_2.Parent = ItemWikiButton
		            TextLabel_2.BackgroundColor3 = stringtocolor(SettingsT.Background)
		            TextLabel_2.BackgroundTransparency = 1
		            TextLabel_2.Size = UDim2.new(0, 110, 0, 110)
		            TextLabel_2.Font = Enum.Font.Nunito
		            TextLabel_2.Text = r.Name
		            TextLabel_2.TextColor3 = stringtocolor(SettingsT.TextColor)
		            TextLabel_2.TextScaled = true
		            TextLabel_2.TextSize = 1.000
		            TextLabel_2.TextWrapped = true
		            TextLabel_2.TextTransparency = 1
				
		            UITextSizeConstraint_2.Parent = TextLabel_2
		            UITextSizeConstraint_2.MaxTextSize = 30
				
		            UICorner_5.CornerRadius = UDim.new(0, 5)
		            UICorner_5.Parent = TextLabel_2
				
		            ItemWikiButton.MouseEnter:Connect(function(value)
		                local tweenoverlay = TweenService:Create(TextLabel_2, TweenInfo.new(0.5), {BackgroundTransparency = 0.4, TextTransparency = 0.4})
		                tweenoverlay:Play()
		            end)
				
		            ItemWikiButton.MouseLeave:Connect(function(value)
		                local tweenoverlay = TweenService:Create(TextLabel_2, TweenInfo.new(0.5), {BackgroundTransparency = 1, TextTransparency = 1})
		                tweenoverlay:Play()
		            end)
		            local clickable = true
		            ItemWikiButton.MouseButton1Click:Connect(function(value)
		                if not clickable then
		                    print("cant click")
		                    return
		                end
		                clickable = false
		                spawn(function()
		                    wait(2)
		                    clickable = true
		                end)
		                if _G.cam ~= nil then
		                    _G.cam:Disconnect()
		                end
		                if upgraderalldata[Frame.Name] ~= nil then
		                    transitionToWikiPg(wikisearch, wikiframe, nil, wikiglow)
		                    newItem(Frame.Name, false)
		                elseif minealldata[Frame.Name] ~= nil then
		                    transitionToWikiPg(wikisearch, wikiframeMine, nil, wikiglowMine)
		                    newMine(Frame.Name, false)
		                elseif furnacealldata[Frame.Name] ~= nil then
		                    transitionToWikiPg(wikisearch, wikiframeFurn, nil, wikiglowFurn)
		                    newFurn(Frame.Name, false)
		                end
		                TextLabel_2.TextTransparency = 1
		                TextLabel_2.BackgroundTransparency = 1
		            end)
		        end
		    end
		end

		wikisearchSearchBar.Changed:Connect(function(value)
		    if value == "Text" then
		        for i,v in pairs(masterwikiscroll:GetChildren()) do
		            if v:IsA("Frame") then
		                for o,r in pairs(v.itemslist:GetChildren()) do
		                    if r:IsA("Frame") then
		                        local item = string.lower(r.Name)
		                        local searched = string.lower(wikisearchSearchBar.Text)
		                        if string.find(item, searched) then
		                            r.Visible = true
		                        else
		                            r.Visible = false
		                        end
		                    end
		                end
		                local itemintier = false
		                for o,r in pairs(v.itemslist:GetChildren()) do
		                    if r:IsA("Frame") then
		                        if r.Visible == true then
		                            itemintier = true
		                        end
		                    end
		                end
		                v.Visible = itemintier
					
		                local tier = string.lower(v.Name)
		                local searched = string.lower(wikisearchSearchBar.Text)
		                if string.find(tier, searched) then
		                    v.Visible = true
		                    for o,r in pairs(v.itemslist:GetChildren()) do
		                        if r:IsA("Frame") then
		                            r.Visible = true
		                        end
		                    end
		                end
		            end
		        end
		    end
		end)

local DragFrames = {wikisearch, wikiframeMine, wikiframeFurn, wikiframe} -- Add all the frames you want to make draggable here
local dragging = {}
local dragInput = {}
local dragStart = {}
local startPos = {}
local UserInputService = game:GetService("UserInputService")

local function update(frame, input)
    local delta = input.Position - dragStart[frame]
    local dragTime = 0.04
    local SmoothDrag = {}
    SmoothDrag.Position = UDim2.new(startPos[frame].X.Scale, startPos[frame].X.Offset + delta.X, startPos[frame].Y.Scale, startPos[frame].Y.Offset + delta.Y)
    local dragSmoothFunction = TweenService:Create(frame, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
    dragSmoothFunction:Play()
end

for _, frame in ipairs(DragFrames) do
    dragging[frame] = false

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging[frame] = true
            dragStart[frame] = input.Position
            startPos[frame] = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging[frame] = false
                end
            end)
        end
    end)

    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput[frame] = input
        end
    end)
end

UserInputService.InputChanged:Connect(function(input)
    for frame, draggingState in pairs(dragging) do
        if draggingState and dragInput[frame] == input and frame.Size then
            update(frame, input)
        end
    end
end)
