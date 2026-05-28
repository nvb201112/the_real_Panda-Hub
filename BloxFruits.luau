local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "the_real_Panda Loader v2.0",
    Icon = "bolt", -- lucide icon. optional
    Author = "YT:@the_real_Panda-Skidder", -- optional
    Background = "rbxassetid://121807169791800"
})

local Tab = Window:Tab({
    Title = "Info",
    Icon = "info", -- optional
    Locked = false,
})

local Button = Tab:Button({
    Title = "Copy owner info",
    Color = Color3.fromHex("#191970"),
    Locked = false,
    Callback = function()
        setclipboard("https://beacons.ai/the_real_panda")
        WindUI:Notify({
            Title = "...",
            Content = "Copied!",
            Duration = 3, -- 3 seconds
            Icon = "info",
})
    end
})

local Tab = Window:Tab({
    Title = "Loader",
    Icon = "loader", -- optional
    Locked = false,
})

local Button = Tab:Button({
    Title = "Load redz script",
    Color = Color3.fromHex("#191970"),
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nvb201112/the_real_Panda-Hub/refs/heads/main/redz.luau"))()
        WindUI:Notify({
            Title = "Loader",
            Content = "Load redz complete!",
            Duration = 3, -- 3 seconds
            Icon = "loader",
})
    end
})

local Button = Tab:Button({
    Title = "Load bnn script",
    Color = Color3.fromHex("#191970"),
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nvb201112/the_real_Panda-Hub/refs/heads/main/bnn.luau"))()
        WindUI:Notify({
            Title = "Loader",
            Content = "Load bnn complete!",
            Duration = 3, -- 3 seconds
            Icon = "loader",
})
    end
})

local Tab = Window:Tab({
    Title = "Black V Hub",
    Icon = "shapes", -- optional
    Locked = false,
})

local Button = Tab:Button({
    Title = "Copy owner info",
    Color = Color3.fromHex("#191970"),
    Locked = false,
    Callback = function()
        setclipboard("https://beacons.ai/the_real_panda")
        WindUI:Notify({
            Title = "...",
            Content = "Copied!",
            Duration = 3, -- 3 seconds
            Icon = "info",
})
    end
})

local Button = Tab:Button({
    Title = "Load kaitun script",
    Color = Color3.fromHex("#191970"),
    Locked = false,
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/1W0tBCWE/raw"))()
        WindUI:Notify({
            Title = "Loader",
            Content = "Load complete!",
            Duration = 3, -- 3 seconds
            Icon = "loader",
})
    end
})

local Button = Tab:Button({
    Title = "Copy kaitun script",
    Color = Color3.fromHex("#191970"),
    Locked = false,
    Callback = function()
        setclipboard(game:HttpGet("https://pastefy.app/1W0tBCWE/raw"))
        WindUI:Notify({
            Title = "...",
            Content = "Copied!",
            Duration = 3, -- 3 seconds
            Icon = "info",
})
    end
})
