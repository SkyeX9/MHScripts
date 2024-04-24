local tweentime = 0.5
local function transitionTo(from, onto, ontosize, glowthing) 
    from.Active = false
    onto.Active = true
    onto.AnchorPoint = Vector2.new(0,0)
    displacementThingy = -18
    screendisp = -38
    if onto.Name == "Upgraders" then
        print("here")
        displacementThingy = 0
        screendisp = 0
    end
    onto.Position = from.Position - UDim2.new(0,0,0,displacementThingy)
    onto.Visible = true
    screenframe.Visible = true
    screenframe.Position = from.Position - UDim2.new(0,0,0,screendisp)
    _G.followdragcrates = from:GetPropertyChangedSignal("Position"):Connect(function(value)
        onto.AnchorPoint = Vector2.new(0,0)
        onto.Position = from.Position - UDim2.new(0,0,0,displacementThingy)
        screenframe.Position = from.Position - UDim2.new(0,0,0,screendisp)
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
    from.Visible = false
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
    screenframe.Visible = false
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

local function transitionBack(from, backto, backtosize, glowthing)
    from.Active = false
    backto.Active = true
    backto.AnchorPoint = Vector2.new(0,0)
    backto.Position = from.Position - UDim2.new(0,0,0,18)
    screenframe.Visible = true
    screenframe.Position = from.Position - UDim2.new(0,0,0,-20)
    _G.followdragcrates = from:GetPropertyChangedSignal("Position"):Connect(function(value)
        backto.AnchorPoint = Vector2.new(0,0)
        backto.Position = from.Position - UDim2.new(0,0,0,18)
        screenframe.Position = from.Position - UDim2.new(0,0,0,-20)
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
        wait(tweentime)
    end
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
        end
    end
    _G.followdragcrates:Disconnect()
    screenframe.Visible = false
end

local function transitionToWikiPg(from, onto, ontosize, glowthing) 
    from.Active = false
    onto.Active = true
    onto.AnchorPoint = Vector2.new(0,0)
    displacementThingy = 0
    screendisp = -20
    onto.Position = from.Position - UDim2.new(0,0,0,displacementThingy)
    onto.Visible = true
    screenframe.Visible = true
    screenframe.Position = from.Position - UDim2.new(0,0,0,screendisp)
    _G.followdragcrates = from:GetPropertyChangedSignal("Position"):Connect(function(value)
        onto.AnchorPoint = Vector2.new(0,0)
        onto.Position = from.Position - UDim2.new(0,0,0,displacementThingy)
        screenframe.Position = from.Position - UDim2.new(0,0,0,screendisp)
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
    screenframe.Visible = false
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
    screenframe.Visible = true
    screenframe.Position = from.Position - UDim2.new(0,0,0,-20)
    _G.followdragcrates = from:GetPropertyChangedSignal("Position"):Connect(function(value)
        backto.AnchorPoint = Vector2.new(0,0)
        backto.Position = from.Position
        screenframe.Position = from.Position - UDim2.new(0,0,0,-20)
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
    screenframe.Visible = false
end
