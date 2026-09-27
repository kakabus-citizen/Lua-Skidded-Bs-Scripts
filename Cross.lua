local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "LGPluginExecutableMainCore" --just to trick people
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = player:WaitForChild("PlayerGui")

local function makeLine(size)
    local line = Instance.new("Frame")
    line.Size = size
    line.AnchorPoint = Vector2.new(0.5, 0.5)
    line.Position = UDim2.fromScale(0.5, 0.5)
    line.BorderSizePixel = 0
    line.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    line.Parent = gui
    return line
end


local horizontal = makeLine(UDim2.new(0, 100000, 0, 3))
local vertical = makeLine(UDim2.new(0, 3, 0, 100000))

RunService.RenderStepped:Connect(function()
    local t = (math.sin(tick() * 2) + 1) / 2

    local color = Color3.new(
        0.5 * t,
        1 - t,
        0.5 + 0.5 * t
    )

    horizontal.BackgroundColor3 = color
    vertical.BackgroundColor3 = color
end)
