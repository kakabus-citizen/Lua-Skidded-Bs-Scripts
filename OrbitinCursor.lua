local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer


UserInputService.MouseIconEnabled = true


local gui = Instance.new("ScreenGui") -- skiddy diddy
gui.Name = "LGPluginManager"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.DisplayOrder = 9999999999999
gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
gui.Parent = player:WaitForChild("PlayerGui")

local cursor = Instance.new("ImageLabel")
cursor.Name = "LGPluginManagerExecutable"
cursor.BackgroundTransparency = 1
cursor.Size = UDim2.fromOffset(32, 32)
cursor.AnchorPoint = Vector2.new(0.5, 0.5)
cursor.ZIndex = 9999999999999
cursor.Image = "rbxassetid://121168368744353"
cursor.Rotation = 0
cursor.Parent = gui

-- Orbit
local radius = 35
local speed = 2
local angle = 0

RunService:BindToRenderStep(
	"LGPluginThird",
	Enum.RenderPriority.Last.Value,
	function(deltaTime)

		angle += speed * deltaTime

		-- Actual mouse screen position
		local mousePosition = UserInputService:GetMouseLocation()

		local x = math.cos(angle) * radius
		local y = math.sin(angle) * radius

		cursor.Position = UDim2.fromOffset(
			mousePosition.X + x,
			mousePosition.Y + y
		)
	end
)
