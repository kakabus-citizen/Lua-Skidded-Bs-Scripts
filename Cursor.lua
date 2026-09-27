local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local Player = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "PLUGINMAKERV3"
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 999999
ScreenGui.Parent = Player:WaitForChild("PlayerGui")

local MouseIcon = Instance.new("Frame")
MouseIcon.Size = UDim2.new(0.022, 0, 0.022, 0)
MouseIcon.BackgroundTransparency = 1
MouseIcon.AnchorPoint = Vector2.new(0.5, 0.5)
MouseIcon.ZIndex = 999999
MouseIcon.Parent = ScreenGui

local AspectRatio = Instance.new("UIAspectRatioConstraint")
AspectRatio.AspectRatio = 0.8
AspectRatio.Parent = MouseIcon

local OuterPointer = Instance.new("ImageLabel")
OuterPointer.Size = UDim2.new(1, 0, 1, 0)
OuterPointer.Position = UDim2.new(0.5, 0, 0.5, 0)
OuterPointer.AnchorPoint = Vector2.new(0.5, 0.5)
OuterPointer.BackgroundTransparency = 1
OuterPointer.Image = "rbxassetid://483266793"
OuterPointer.ImageColor3 = Color3.fromRGB(0, 0, 0)
OuterPointer.Rotation = -20
OuterPointer.ZIndex = 999999
OuterPointer.Parent = MouseIcon

local InnerPointer = Instance.new("ImageLabel")
InnerPointer.Size = UDim2.new(0.8, 0, 0.8, 0)
InnerPointer.Position = UDim2.new(0.5, 0, 0.5, 0)
InnerPointer.AnchorPoint = Vector2.new(0.5, 0.5)
InnerPointer.BackgroundTransparency = 1
InnerPointer.Image = "rbxassetid://483266793"
InnerPointer.ImageColor3 = Color3.fromRGB(170, 0, 255)
InnerPointer.Rotation = -20
InnerPointer.ZIndex = 1000000
InnerPointer.Parent = MouseIcon

UserInputService.MouseIconEnabled = true

RunService.RenderStepped:Connect(function()
	local mouse = UserInputService:GetMouseLocation()

	MouseIcon.Position = UDim2.fromOffset(
		mouse.X,
		mouse.Y
	)
end)
