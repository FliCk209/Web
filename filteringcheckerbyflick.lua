-- game filtering checker by FliCk#1338
local Gui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local CheckButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Output = Instance.new("TextLabel")
local Label1 = Instance.new("TextLabel")

--Properties:

Gui.Name = "Gui"
Gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = Gui
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.314121485, 0, 0.345459849, 0)
MainFrame.Size = UDim2.new(0.27268064, 0, 0.312855214, 0)

UICorner.CornerRadius = UDim.new(0.100000001, 0)
UICorner.Parent = MainFrame

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0349266082, 0, 0.0291335527, 0)
Title.Size = UDim2.new(0.874068797, 0, 0.110859051, 0)
Title.Font = Enum.Font.SourceSansSemibold
Title.Text = "Game Filtering Checker 3000"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

Close.Name = "Close"
Close.Parent = Title
Close.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(1.00772083, 0, 0.105315864, 0)
Close.Size = UDim2.new(0.0567772798, 0, 0.782051861, 0)
Close.Font = Enum.Font.SourceSansSemibold
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 30.000
Close.TextWrapped = true
Close.MouseButton1Click:Connect(Function()
Gui:Destroy()
end)

UICorner_2.CornerRadius = UDim.new(0.5, 0)
UICorner_2.Parent = Close

CheckButton.Name = "CheckButton"
CheckButton.Parent = MainFrame
CheckButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CheckButton.Position = UDim2.new(0.0268666223, 0, 0.180400774, 0)
CheckButton.Size = UDim2.new(0.940941989, 0, 0.19258453, 0)
CheckButton.Font = Enum.Font.SourceSansSemibold
CheckButton.Text = "Check Filtering"
CheckButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckButton.TextSize = 30.000
CheckButton.TextWrapped = true
CheckButton.MouseButton1Click:Connect(function()
	if workspace.FilteringEnabled == true then
		Output.Text = "Filtering Is Enabled... :sadpepe:"
	else
		Output.Text = "Filtering Is Disabled !!!"
		if workspace.FilteringEnabled == nil then
   Output.Text = "Could not grab info."
  end
 end
 end)

UICorner_3.CornerRadius = UDim.new(0.5, 0)
UICorner_3.Parent = CheckButton

Output.Name = "Output"
Output.Parent = MainFrame
Output.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Output.BorderColor3 = Color3.fromRGB(255, 255, 255)
Output.Position = UDim2.new(0.0322399475, 0, 0.507831752, 0)
Output.Size = UDim2.new(0.932881832, 0, 0.436927885, 0)
Output.Font = Enum.Font.Code
Output.Text = "Filtering Enabled : Null"
Output.TextColor3 = Color3.fromRGB(255, 255, 255)
Output.TextScaled = true
Output.TextSize = 14.000
Output.TextWrapped = true
Output.TextXAlignment = Enum.TextXAlignment.Left
Output.TextYAlignment = Enum.TextYAlignment.Top

Label1.Name = "Label1"
Label1.Parent = Output
Label1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label1.BackgroundTransparency = 1.000
Label1.BorderSizePixel = 0
Label1.Position = UDim2.new(-0.00251293299, 0, -0.245199591, 0)
Label1.Size = UDim2.new(0.346093684, 0, 0.18515785, 0)
Label1.Font = Enum.Font.SourceSansSemibold
Label1.Text = "Output:"
Label1.TextColor3 = Color3.fromRGB(255, 255, 255)
Label1.TextScaled = true
Label1.TextSize = 14.000
Label1.TextWrapped = true
Label1.TextXAlignment = Enum.TextXAlignment.Left

local function IHNDNXQ_fake_script()
	local script = Instance.new('LocalScript', MainFrame)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(IHNDNXQ_fake_script)()
