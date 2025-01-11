local player = game.Players.LocalPlayer
local character = player.Character
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local messageFrame = Instance.new("Frame")
messageFrame.Size = UDim2.new(0, 300, 0, 100)
messageFrame.Position = UDim2.new(0.5, -150, 0.5, -50)
messageFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
messageFrame.BackgroundTransparency = 0.5
messageFrame.Parent = screenGui

local messageLabel = Instance.new("TextLabel")
messageLabel.Size = UDim2.new(1, 0, 1, 0)
messageLabel.Text = "ThanhDanHub:Script hỗ trợ những người làm hack mà ko có tọa độ"
messageLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
messageLabel.TextSize = 18
messageLabel.BackgroundTransparency = 1
messageLabel.Parent = messageFrame

local confirmButton = Instance.new("TextButton")
confirmButton.Size = UDim2.new(0, 100, 0, 50)
confirmButton.Position = UDim2.new(0.5, -50, 0.5, 30)
confirmButton.Text = "Xác định"
confirmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
confirmButton.BackgroundColor3 = Color3.fromRGB(0, 128, 0)
confirmButton.Parent = screenGui

local coordinateLabel = Instance.new("TextLabel")
coordinateLabel.Size = UDim2.new(0, 300, 0, 50)
coordinateLabel.Position = UDim2.new(0.5, -150, 0.5, -100)
coordinateLabel.Text = "Tọa độ: (0, 0, 0)"
coordinateLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
coordinateLabel.TextSize = 20
coordinateLabel.BackgroundTransparency = 1
coordinateLabel.Visible = false
coordinateLabel.Parent = screenGui

wait(2)
messageFrame.Visible = false
confirmButton.Visible = true

confirmButton.MouseButton1Click:Connect(function()
    messageFrame.Visible = false
    confirmButton.Visible = false
    coordinateLabel.Visible = true
    
    while coordinateLabel.Visible do
        local position = humanoidRootPart.Position
        coordinateLabel.Text = "Tọa độ: (" .. math.round(position.X) .. ", " .. math.round(position.Y) .. ", " .. math.round(position.Z) .. ")"
        wait(0.1)
    end
end)
