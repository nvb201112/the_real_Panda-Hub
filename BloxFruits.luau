-- Panda Hub Loader - Fluent UI + Floating Button (Kéo thả được)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "the_real_Panda Loader",
    SubTitle = "by the_ real_Panda",
    TabWidth = 160,
    Size = UDim2.fromOffset(480, 360),
    Acrylic = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.RightShift
})

local MainTab = Window:AddTab({ Title = "Loader", Icon = "home" })
local Section = MainTab:AddSection("Script Loader")

-- Button Load Redz
Section:AddButton({
    Title = "🔴 Load Redz Script",
    Description = "Chạy bản Redz ",
    Callback = function()
        Fluent:Notify({ Title = "Redz", Content = "Đang tải Redz Script...", Duration = 4 })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nvb201112/the_real_Panda-Hub/refs/heads/main/redz.luau"))()
    end
})

-- Button Load BNN
Section:AddButton({
    Title = "🟠 Load Chuối Script",
    Description = "Chạy bản banana ",
    Callback = function()
        Fluent:Notify({ Title = "BNN", Content = "Đang tải BNN Script...", Duration = 4 })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nvb201112/the_real_Panda-Hub/refs/heads/main/bnn.luau"))()
    end
})

-- ==================== FLOATING BUTTON CÓ THỂ KÉO DI CHUYỂN ====================
local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "PandaDraggableButton"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = PlayerGui

local ToggleButton = Instance.new("ImageButton")
ToggleButton.Size = UDim2.new(0, 75, 0, 75)
ToggleButton.Position = UDim2.new(1, -100, 1, -100)   -- Vị trí khởi đầu
ToggleButton.BackgroundTransparency = 1
ToggleButton.Image = "rbxassetid://10734950309"        -- Icon Panda
ToggleButton.Parent = ScreenGui

-- Bo tròn + viền đẹp
local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(1, 0)
Corner.Parent = ToggleButton

local Stroke = Instance.new("UIStroke")
Stroke.Thickness = 2.5
Stroke.Color = Color3.fromRGB(0, 255, 200)
Stroke.Parent = ToggleButton

-- ==================== CODE KÉO THẢ (Drag) ====================
local dragging = false
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    ToggleButton.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

ToggleButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = ToggleButton.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

ToggleButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        update(input)
    end
end)

-- ==================== CHỨC NĂNG NHẤN NÚT ====================
local isVisible = true

ToggleButton.Activated:Connect(function()
    isVisible = not isVisible
    if isVisible then
        Window:Restore()
        Fluent:Notify({ Title = "Giao diện", Content = "Đã hiện lại ui", Duration = 3 })
    else
        Window:Minimize()
        Fluent:Notify({ Title = "Giao diện", Content = "Đã ẩn giao diện", Duration = 4 })
    end
end)

-- Thông báo khởi động
Fluent:Notify({
    Title = "the_real_Panda Loader",
    Content = "Đã load thành công!\nNhấn icon để ẩn/hiện menu.\nGiữ và kéo để di chuyển nút (hỗ trợ mobile).",
    Duration = 8
})
