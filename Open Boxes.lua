local TweenService = game:GetService("TweenService")
	local RS = game:GetService("ReplicatedStorage")
	local tweentime = 0.5

	local SettingsS = game:service'HttpService':JSONDecode(readfile("Ironic Hub/Miners Haven/Options.Ironic"))

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

	local selectedSalvages = {}
	local IronicsBoxOpener = Instance.new("ScreenGui")
	local Main = Instance.new("ImageLabel")
	local Glow = Instance.new("ImageLabel")
	local TopBar = Instance.new("ImageLabel")
	local Title = Instance.new("TextLabel")
	local Boxes_ScrollFrame = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local CakeRaffle = Instance.new("ImageButton")
	local Easter = Instance.new("ImageButton")
	local Festive = Instance.new("ImageButton")
	local Heavenly = Instance.new("ImageButton")
	local Inferno = Instance.new("ImageButton")
	local Luxury = Instance.new("ImageButton")
	local Magnificent = Instance.new("ImageButton")
	local Pumpkin = Instance.new("ImageButton")
	local RedBanded = Instance.new("ImageButton")
	local Regular = Instance.new("ImageButton")
	local Spectral = Instance.new("ImageButton")
	local Twitch = Instance.new("ImageButton")
	local Unreal = Instance.new("ImageButton")
	local Birthday = Instance.new("ImageButton")
	local BottomBar = Instance.new("ImageLabel")
	local LuckyClovers = Instance.new("ImageButton")
	local BoxesLeft_Bar = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")
	local BoxesLeft_Text = Instance.new("TextLabel")
	local Back_Button = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")

	IronicsBoxOpener.Name = "Ironic's Box Opener"
	IronicsBoxOpener.Parent = game.CoreGui

	Main.Name = "Main"
	Main.Parent = IronicsBoxOpener
	Main.Active = true
	Main.BackgroundColor3 = Color3.fromRGB(163, 163, 163)
	Main.BackgroundTransparency = 1.000
	Main.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Main.Position = UDim2.new(0.217751935, 0, 0.332993299, 0)
	Main.Size = UDim2.new(0, 671, 0, 221)
	Main.Image = "rbxassetid://4595286933"
	Main.ImageColor3 = Color3.fromRGB(24, 24, 24)
	Main.ScaleType = Enum.ScaleType.Slice
	Main.SliceCenter = Rect.new(4, 4, 296, 296)
	Main.Draggable = true
	Main.Visible = false

	Glow.Name = "Glow"
	Glow.Parent = Main
	Glow.BackgroundTransparency = 1.000
	Glow.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Glow.Position = UDim2.new(0, -15, 0, -15)
	Glow.Size = UDim2.new(1, 30, 1, 30)
	Glow.ZIndex = 0
	Glow.Image = "rbxassetid://5028857084"
	Glow.ScaleType = Enum.ScaleType.Slice
	Glow.SliceCenter = Rect.new(24, 24, 276, 276)

	TopBar.Name = "TopBar"
	TopBar.Parent = Main
	TopBar.BackgroundTransparency = 1.000
	TopBar.BorderColor3 = Color3.fromRGB(27, 42, 53)
	TopBar.Size = UDim2.new(1, 0, 0, 38)
	TopBar.ZIndex = 5
	TopBar.Image = "rbxassetid://4595286933"
	TopBar.ImageColor3 = Color3.fromRGB(10, 10, 10)
	TopBar.ScaleType = Enum.ScaleType.Slice
	TopBar.SliceCenter = Rect.new(4, 4, 296, 296)

	Title.Name = "Title"
	Title.Parent = TopBar
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.Position = UDim2.new(0, 23, 0, 5)
	Title.Size = UDim2.new(1, -46, 0.289473683, 16)
	Title.ZIndex = 5
	Title.Font = Enum.Font.Jura
	Title.Text = "Select Boxes To Open"
	Title.TextYAlignment = "Bottom"
	Title.TextXAlignment = "Center"
	Title.TextColor3 = Color3.fromRGB(254, 255, 255)
	Title.TextSize = 22.000

	Boxes_ScrollFrame.Name = "Boxes_ScrollFrame"
	Boxes_ScrollFrame.Parent = Main
	Boxes_ScrollFrame.Active = true
	Boxes_ScrollFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Boxes_ScrollFrame.BackgroundTransparency = 1.000
	Boxes_ScrollFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Boxes_ScrollFrame.BorderSizePixel = 0
	Boxes_ScrollFrame.Position = UDim2.new(0.00899999961, 0, 0.199000001, 0)
	Boxes_ScrollFrame.Size = UDim2.new(0, 659, 0, 117)
	Boxes_ScrollFrame.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	Boxes_ScrollFrame.CanvasSize = UDim2.new(2.0999999, 0, 0, 0)
	Boxes_ScrollFrame.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
	Boxes_ScrollFrame.ScrollBarThickness = 3
	Boxes_ScrollFrame.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	Boxes_ScrollFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

	UIListLayout.Parent = Boxes_ScrollFrame
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

	local CakeRaffle_Debounce = false
	CakeRaffle.Name = "Cake Raffle"
	CakeRaffle.Parent = Boxes_ScrollFrame
	CakeRaffle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CakeRaffle.BackgroundTransparency = 1.000
	CakeRaffle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CakeRaffle.BorderSizePixel = 0
	CakeRaffle.LayoutOrder = 8
	CakeRaffle.Size = UDim2.new(0, 100, 0, 100)
	CakeRaffle.Image = "rbxassetid://6652258583"
	CakeRaffle.ImageTransparency = 0.500

	CakeRaffle.MouseButton1Click:Connect(function()
		CakeRaffle_Debounce = not CakeRaffle_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Cake Raffle"] = CakeRaffle_Debounce
		SaveS()
		if CakeRaffle_Debounce then
			local tweentrans = TweenService:Create(CakeRaffle, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(CakeRaffle, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	local Easter_Debounce = false
	Easter.Name = "Easter"
	Easter.Parent = Boxes_ScrollFrame
	Easter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Easter.BackgroundTransparency = 1.000
	Easter.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Easter.BorderSizePixel = 0
	Easter.LayoutOrder = 7
	Easter.Size = UDim2.new(0, 100, 0, 100)
	Easter.Image = "rbxassetid://6652258288"
	Easter.ImageTransparency = 0.500

	Easter.MouseButton1Click:Connect(function()
		Easter_Debounce = not Easter_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Easter"] = Easter_Debounce
		SaveS()
		if Easter_Debounce then
			local tweentrans = TweenService:Create(Easter, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Easter, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	local Festive_Debounce = false
	Festive.Name = "Festive"
	Festive.Parent = Boxes_ScrollFrame
	Festive.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Festive.BackgroundTransparency = 1.000
	Festive.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Festive.BorderSizePixel = 0
	Festive.LayoutOrder = 7
	Festive.Size = UDim2.new(0, 100, 0, 100)
	Festive.Image = "rbxassetid://5140907136"
	Festive.ImageTransparency = 0.500

	Festive.MouseButton1Click:Connect(function()
		Festive_Debounce = not Festive_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Festive"] = Festive_Debounce
		SaveS()
		if Festive_Debounce then
			local tweentrans = TweenService:Create(Festive, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Festive, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	local Heavenly_Debounce = false
	Heavenly.Name = "Heavenly"
	Heavenly.Parent = Boxes_ScrollFrame
	Heavenly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Heavenly.BackgroundTransparency = 1.000
	Heavenly.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Heavenly.BorderSizePixel = 0
	Heavenly.LayoutOrder = 5
	Heavenly.Size = UDim2.new(0, 100, 0, 100)
	Heavenly.Image = "rbxassetid://5140907242"
	Heavenly.ImageTransparency = 0.500

	Heavenly.MouseButton1Click:Connect(function()
		Heavenly_Debounce = not Heavenly_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Heavenly"] = Heavenly_Debounce
		SaveS()
		if Heavenly_Debounce then
			local tweentrans = TweenService:Create(Heavenly, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Heavenly, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	local Inferno_Debounce = false
	Inferno.Name = "Inferno"
	Inferno.Parent = Boxes_ScrollFrame
	Inferno.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Inferno.BackgroundTransparency = 1.000
	Inferno.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Inferno.BorderSizePixel = 0
	Inferno.LayoutOrder = 2
	Inferno.Size = UDim2.new(0, 100, 0, 100)
	Inferno.Image = "http://www.roblox.com/asset/?id=5140907368"
	Inferno.ImageTransparency = 0.500

	Inferno.MouseButton1Click:Connect(function()
		Inferno_Debounce = not Inferno_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Inferno"] = Inferno_Debounce
		SaveS()
		if Inferno_Debounce then
			local tweentrans = TweenService:Create(Inferno, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Inferno, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	local Luxury_Debounce = false
	Luxury.Name = "Luxury"
	Luxury.Parent = Boxes_ScrollFrame
	Luxury.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Luxury.BackgroundTransparency = 1.000
	Luxury.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Luxury.BorderSizePixel = 0
	Luxury.LayoutOrder = 5
	Luxury.Size = UDim2.new(0, 100, 0, 100)
	Luxury.Image = "rbxassetid://5140907462"
	Luxury.ImageTransparency = 0.500

	Luxury.MouseButton1Click:Connect(function()
		Luxury_Debounce = not Luxury_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Luxury"] = Luxury_Debounce
		SaveS()
		if Luxury_Debounce then
			local tweentrans = TweenService:Create(Luxury, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Luxury, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	local Magnificent_Debounce = false
	Magnificent.Name = "Magnificent"
	Magnificent.Parent = Boxes_ScrollFrame
	Magnificent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Magnificent.BackgroundTransparency = 1.000
	Magnificent.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Magnificent.BorderSizePixel = 0
	Magnificent.LayoutOrder = 5
	Magnificent.Size = UDim2.new(0, 100, 0, 100)
	Magnificent.Image = "rbxassetid://5140907561"
	Magnificent.ImageTransparency = 0.500

	Magnificent.MouseButton1Click:Connect(function()
		Magnificent_Debounce = not Magnificent_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Magnificent"] = Magnificent_Debounce
		SaveS()
		if Magnificent_Debounce then
			local tweentrans = TweenService:Create(Magnificent, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Magnificent, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	local Pumpkin_Debounce = false
	Pumpkin.Name = "Pumpkin"
	Pumpkin.Parent = Boxes_ScrollFrame
	Pumpkin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Pumpkin.BackgroundTransparency = 1.000
	Pumpkin.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Pumpkin.BorderSizePixel = 0
	Pumpkin.LayoutOrder = 7
	Pumpkin.Size = UDim2.new(0, 100, 0, 100)
	Pumpkin.Image = "rbxassetid://5140907652"
	Pumpkin.ImageTransparency = 0.500

	Pumpkin.MouseButton1Click:Connect(function()
		Pumpkin_Debounce = not Pumpkin_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Pumpkin"] = Pumpkin_Debounce
		SaveS()
		if Pumpkin_Debounce then
			local tweentrans = TweenService:Create(Pumpkin, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Pumpkin, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	local RedBanded_Debounce = false
	RedBanded.Name = "Red-Banded"
	RedBanded.Parent = Boxes_ScrollFrame
	RedBanded.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RedBanded.BackgroundTransparency = 1.000
	RedBanded.BorderColor3 = Color3.fromRGB(0, 0, 0)
	RedBanded.BorderSizePixel = 0
	RedBanded.LayoutOrder = 3
	RedBanded.Size = UDim2.new(0, 100, 0, 100)
	RedBanded.Image = "rbxassetid://5140907725"
	RedBanded.ImageTransparency = 0.500

	RedBanded.MouseButton1Click:Connect(function()
		RedBanded_Debounce = not RedBanded_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Red-Banded"] = RedBanded_Debounce
		SaveS()
		if RedBanded_Debounce then
			local tweentrans = TweenService:Create(RedBanded, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(RedBanded, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	local Regular_Debounce = false
	Regular.Name = "Regular"
	Regular.Parent = Boxes_ScrollFrame
	Regular.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Regular.BackgroundTransparency = 1.000
	Regular.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Regular.BorderSizePixel = 0
	Regular.Size = UDim2.new(0, 100, 0, 100)
	Regular.Image = "http://www.roblox.com/asset/?id=5140907803"
	Regular.ImageTransparency = 0.500

	Regular.MouseButton1Click:Connect(function()
		Regular_Debounce = not Regular_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Regular"] = Regular_Debounce
		SaveS()
		if Regular_Debounce then
			local tweentrans = TweenService:Create(Regular, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Regular, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	local Spectral_Debounce = false
	Spectral.Name = "Spectral"
	Spectral.Parent = Boxes_ScrollFrame
	Spectral.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Spectral.BackgroundTransparency = 1.000
	Spectral.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Spectral.BorderSizePixel = 0
	Spectral.LayoutOrder = 4
	Spectral.Size = UDim2.new(0, 100, 0, 100)
	Spectral.Image = "rbxassetid://5140907887"
	Spectral.ImageTransparency = 0.500

	Spectral.MouseButton1Click:Connect(function()
		Spectral_Debounce = not Spectral_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Spectral"] = Spectral_Debounce
		SaveS()
		if Spectral_Debounce then
			local tweentrans = TweenService:Create(Spectral, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Spectral, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	local Twitch_Debounce = false
	Twitch.Name = "Twitch"
	Twitch.Parent = Boxes_ScrollFrame
	Twitch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Twitch.BackgroundTransparency = 1.000
	Twitch.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Twitch.BorderSizePixel = 0
	Twitch.LayoutOrder = 6
	Twitch.Size = UDim2.new(0, 100, 0, 100)
	Twitch.Image = "rbxassetid://5140907979"
	Twitch.ImageTransparency = 0.500

	Twitch.MouseButton1Click:Connect(function()
		Twitch_Debounce = not Twitch_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Twitch"] = Twitch_Debounce
		SaveS()
		if Twitch_Debounce then
			local tweentrans = TweenService:Create(Twitch, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Twitch, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	local Unreal_Debounce = false
	Unreal.Name = "Unreal"
	Unreal.Parent = Boxes_ScrollFrame
	Unreal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Unreal.BackgroundTransparency = 1.000
	Unreal.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Unreal.BorderSizePixel = 0
	Unreal.LayoutOrder = 1
	Unreal.Size = UDim2.new(0, 100, 0, 100)
	Unreal.Image = "http://www.roblox.com/asset/?id=5140908051"
	Unreal.ImageTransparency = 0.500

	Unreal.MouseButton1Click:Connect(function()
		Unreal_Debounce = not Unreal_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Unreal"] = Unreal_Debounce
		SaveS()
		if Unreal_Debounce then
			local tweentrans = TweenService:Create(Unreal, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Unreal, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	local Birthday_Debounce = false
	Birthday.Name = "Birthday"
	Birthday.Parent = Boxes_ScrollFrame
	Birthday.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Birthday.BackgroundTransparency = 1.000
	Birthday.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Birthday.BorderSizePixel = 0
	Birthday.LayoutOrder = 8
	Birthday.Size = UDim2.new(0, 100, 0, 100)
	Birthday.Image = "rbxassetid://5140907021"
	Birthday.ImageTransparency = 0.500

	Birthday.MouseButton1Click:Connect(function()
		Birthday_Debounce = not Birthday_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Birthday"] = Birthday_Debounce
		SaveS()
		if Birthday_Debounce then
			local tweentrans = TweenService:Create(Birthday, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Birthday, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	BottomBar.Name = "BottomBar"
	BottomBar.Parent = Main
	BottomBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BottomBar.BackgroundTransparency = 1.000
	BottomBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BottomBar.BorderSizePixel = 0
	BottomBar.Position = UDim2.new(0, 0, 0.710407257, 0)
	BottomBar.Size = UDim2.new(1, 0, 0.117647059, 38)
	BottomBar.Image = "rbxassetid://4595286933"
	BottomBar.ImageColor3 = Color3.fromRGB(10, 10, 10)
	BottomBar.ImageTransparency = 1.000
	BottomBar.ScaleType = Enum.ScaleType.Slice
	BottomBar.SliceCenter = Rect.new(4, 4, 296, 296)

	local LuckyClovers_Debounce = false
	LuckyClovers.Name = "LuckyClovers"
	LuckyClovers.Parent = BottomBar
	LuckyClovers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LuckyClovers.BackgroundTransparency = 1.000
	LuckyClovers.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LuckyClovers.BorderSizePixel = 0
	LuckyClovers.Position = UDim2.new(0.915052176, 0, 0.125, 0)
	LuckyClovers.Size = UDim2.new(0, 50, 0, 50)
	LuckyClovers.Image = "rbxassetid://5506273657"
	LuckyClovers.ImageTransparency = 0.500

	LuckyClovers.MouseButton1Click:Connect(function()
		LuckyClovers_Debounce = not LuckyClovers_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Use Clovers"] = LuckyClovers_Debounce
		SaveS()
		if LuckyClovers_Debounce then
			local tweentrans = TweenService:Create(LuckyClovers, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(LuckyClovers, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	BoxesLeft_Bar.Name = "BoxesLeft_Bar"
	BoxesLeft_Bar.Parent = BottomBar
	BoxesLeft_Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BoxesLeft_Bar.BackgroundTransparency = 1.000
	BoxesLeft_Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BoxesLeft_Bar.BorderSizePixel = 0
	BoxesLeft_Bar.Position = UDim2.new(0.308, 0, 0.289, 0)
	BoxesLeft_Bar.Size = UDim2.new(0.383010328, 0, -0.147977918, 38)
	BoxesLeft_Bar.Image = "rbxassetid://4595286933"
	BoxesLeft_Bar.ImageColor3 = Color3.fromRGB(10, 10, 10)
	BoxesLeft_Bar.SliceScale = 2.000

	BoxesLeft_Text.Name = "BoxesLeft_Text"
	BoxesLeft_Text.Parent = BoxesLeft_Bar
	BoxesLeft_Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BoxesLeft_Text.BackgroundTransparency = 1.000
	BoxesLeft_Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BoxesLeft_Text.Position = UDim2.new(0, 23, 0, 4)
	BoxesLeft_Text.Size = UDim2.new(1, -46, 0.289473683, 16)
	BoxesLeft_Text.ZIndex = 5
	BoxesLeft_Text.Font = Enum.Font.Jura
	BoxesLeft_Text.Text = "Total Boxes: 69420"
	BoxesLeft_Text.TextColor3 = Color3.fromRGB(254, 255, 255)
	BoxesLeft_Text.TextScaled = false
	BoxesLeft_Text.TextYAlignment = "Bottom"
	BoxesLeft_Text.TextXAlignment = "Center"
	BoxesLeft_Text.TextSize = 22.000
	BoxesLeft_Text.TextWrapped = true

	Back_Button.Name = "Back_Button"
	Back_Button.Parent = BottomBar
	Back_Button.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	Back_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Back_Button.BorderSizePixel = 0
	Back_Button.Position = UDim2.new(0.0193740688, 0, 0.5, 0)
	Back_Button.Size = UDim2.new(0, 70, 0, 20)
	Back_Button.Font = Enum.Font.Jura
	Back_Button.Text = "Back"
	Back_Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	Back_Button.TextSize = 15.000
	Back_Button.TextYAlignment = "Bottom"
	Back_Button.TextXAlignment = "Center"
	Back_Button.TextWrapped = true

	UICorner.Parent = BoxesLeft_Bar
	UICorner_2.Parent = Back_Button

	Back_Button.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(Back_Button, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3})
		tweentrans:Play()
	end)

	Back_Button.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(Back_Button, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0})
		tweentrans:Play()
	end)

	Back_Button.MouseButton1Click:Connect(function()
		transitionBack(Main, game.CoreGui["Ironic's Miner's Haven Ghost Client - v"..SettingsS.ScriptVersion].Main, UDim2.new(0, 671, 0, 415), Glow)
	end)

	local CloverUsage = Client.UseClover
	function OpenBoxes()
		local boxesToOpen = SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]
		
		for boxName, isOpen in pairs(boxesToOpen) do
			if isOpen then
				if SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Use Clovers"] then 
					CloverUsage.Value = true
				else
					CloverUsage.Value = false
				end
				task.wait()
				RS.MysteryBox:InvokeServer(boxName)
				task.wait(7)
			end
		end
	end

	getgenv().Open = true
	task.defer(function()
		while getgenv().Open and task.wait() do
			BoxesLeft_Text = "Total Boxes: "..game.Players.LocalPlayer.Crates.Value
			OpenBoxes()
		end
	end)
