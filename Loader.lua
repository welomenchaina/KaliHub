local KEY_SITE_URL = "https://ads.luarmor.net/get_key?for=Kali_Hub-kRvbKFxnnbcD"
local SAVE_FILE = "kalisaved_key.txt"

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "KeySystemGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = game:GetService("CoreGui")

local blur = Instance.new("BlurEffect")
blur.Size = 5
blur.Parent = game:GetService("Lighting")

local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 350, 0, 490)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 24)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 20)
mainCorner.Parent = mainFrame

local shadowStroke = Instance.new("UIStroke")
shadowStroke.Color = Color3.fromRGB(100, 100, 255)
shadowStroke.Thickness = 1
shadowStroke.Transparency = 0.6
shadowStroke.Parent = mainFrame

local shadowGradient = Instance.new("UIGradient")
shadowGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 43, 226)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(75, 0, 130)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(138, 43, 226))
}
shadowGradient.Rotation = 45
shadowGradient.Parent = shadowStroke

local gradientOverlay = Instance.new("Frame")
gradientOverlay.Size = UDim2.new(1, 0, 0, 4)
gradientOverlay.Position = UDim2.new(0, 0, 0, 0)
gradientOverlay.BackgroundTransparency = 0
gradientOverlay.BorderSizePixel = 0
gradientOverlay.ZIndex = 2
gradientOverlay.Parent = mainFrame

local overlayCorner = Instance.new("UICorner")
overlayCorner.CornerRadius = UDim.new(0, 20)
overlayCorner.Parent = gradientOverlay

local overlayGradient = Instance.new("UIGradient")
overlayGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 43, 226)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(75, 0, 130)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(138, 43, 226))
}
overlayGradient.Rotation = 0
overlayGradient.Parent = gradientOverlay

game:GetService("RunService").Heartbeat:Connect(function()
    if overlayGradient then
        overlayGradient.Rotation = (overlayGradient.Rotation + 0.5) % 360
    end
end)

local headerFrame = Instance.new("Frame")
headerFrame.Size = UDim2.new(1, 0, 0, 120)
headerFrame.BackgroundTransparency = 1
headerFrame.BorderSizePixel = 0
headerFrame.Parent = mainFrame

local iconLabel = Instance.new("TextLabel")
iconLabel.Size = UDim2.new(0, 60, 0, 60)
iconLabel.Position = UDim2.new(0.5, -30, 0, 20)
iconLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
iconLabel.BorderSizePixel = 0
iconLabel.Text = "🔐"
iconLabel.TextScaled = true
iconLabel.Font = Enum.Font.GothamBold
iconLabel.Parent = headerFrame

local iconCorner = Instance.new("UICorner")
iconCorner.CornerRadius = UDim.new(1, 0)
iconCorner.Parent = iconLabel

local iconStroke = Instance.new("UIStroke")
iconStroke.Color = Color3.fromRGB(138, 43, 226)
iconStroke.Thickness = 2
iconStroke.Transparency = 0.3
iconStroke.Parent = iconLabel

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -40, 0, 35)
titleLabel.Position = UDim2.new(0, 20, 0, 80)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Kali Hub"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextSize = 28
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextXAlignment = Enum.TextXAlignment.Center
titleLabel.Parent = headerFrame

local titleGradient = Instance.new("UIGradient")
titleGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 150, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
titleGradient.Rotation = 90
titleGradient.Parent = titleLabel

local subtitleLabel = Instance.new("TextLabel")
subtitleLabel.Size = UDim2.new(1, -40, 0, 20)
subtitleLabel.Position = UDim2.new(0, 20, 0, 110)
subtitleLabel.BackgroundTransparency = 1
subtitleLabel.Text = "Free Access • 12 Hour Keys"
subtitleLabel.TextColor3 = Color3.fromRGB(140, 140, 160)
subtitleLabel.TextSize = 13
subtitleLabel.Font = Enum.Font.Gotham
subtitleLabel.TextXAlignment = Enum.TextXAlignment.Center
subtitleLabel.Parent = headerFrame

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 40, 0, 40)
closeButton.Position = UDim2.new(1, -50, 0, 15)
closeButton.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
closeButton.BorderSizePixel = 0
closeButton.Text = "x"
closeButton.TextColor3 = Color3.fromRGB(220, 220, 230)
closeButton.TextSize = 20
closeButton.Font = Enum.Font.GothamBold
closeButton.ZIndex = 3
closeButton.Parent = mainFrame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(1, 0)
closeCorner.Parent = closeButton

local closeStroke = Instance.new("UIStroke")
closeStroke.Color = Color3.fromRGB(50, 50, 65)
closeStroke.Thickness = 1
closeStroke.Transparency = 0.5
closeStroke.Parent = closeButton

closeButton.MouseEnter:Connect(function()
    game:GetService("TweenService"):Create(closeButton, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.fromRGB(220, 50, 80)
    }):Play()
end)

closeButton.MouseLeave:Connect(function()
    game:GetService("TweenService"):Create(closeButton, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    }):Play()
end)

local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, -50, 1, -220)
contentFrame.Position = UDim2.new(0, 25, 0, 130)
contentFrame.BackgroundTransparency = 1
contentFrame.Parent = mainFrame

local loadingFrame = Instance.new("Frame")
loadingFrame.Size = UDim2.new(1, 0, 0, 80)
loadingFrame.Position = UDim2.new(0, 0, 0, 0)
loadingFrame.BackgroundTransparency = 1
loadingFrame.Visible = false
loadingFrame.ZIndex = 10
loadingFrame.Parent = contentFrame

local loadingSpinner = Instance.new("ImageLabel")
loadingSpinner.Size = UDim2.new(0, 50, 0, 50)
loadingSpinner.Position = UDim2.new(0.5, -25, 0, 5)
loadingSpinner.BackgroundTransparency = 1
loadingSpinner.Image = "rbxasset://textures/loading/robloxTilt.png"
loadingSpinner.ImageColor3 = Color3.fromRGB(138, 43, 226)
loadingSpinner.Parent = loadingFrame

local loadingText = Instance.new("TextLabel")
loadingText.Size = UDim2.new(1, 0, 0, 20)
loadingText.Position = UDim2.new(0, 0, 0, 55)
loadingText.BackgroundTransparency = 1
loadingText.Text = "Verifying key..."
loadingText.TextColor3 = Color3.fromRGB(200, 150, 255)
loadingText.TextSize = 12
loadingText.Font = Enum.Font.Gotham
loadingText.TextXAlignment = Enum.TextXAlignment.Center
loadingText.Parent = loadingFrame

local spinTween = game:GetService("TweenService"):Create(
    loadingSpinner,
    TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1),
    {Rotation = 360}
)

local inputFrame = Instance.new("Frame")
inputFrame.Size = UDim2.new(1, 0, 0, 55)
inputFrame.Position = UDim2.new(0, 0, 0, 85)
inputFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
inputFrame.BorderSizePixel = 0
inputFrame.Parent = contentFrame

local inputCorner = Instance.new("UICorner")
inputCorner.CornerRadius = UDim.new(0, 12)
inputCorner.Parent = inputFrame

local inputStroke = Instance.new("UIStroke")
inputStroke.Color = Color3.fromRGB(50, 50, 70)
inputStroke.Thickness = 1.5
inputStroke.Transparency = 0.5
inputStroke.Parent = inputFrame

local keyInput = Instance.new("TextBox")
keyInput.Size = UDim2.new(1, -30, 1, 0)
keyInput.Position = UDim2.new(0, 15, 0, 0)
keyInput.BackgroundTransparency = 1
keyInput.Text = ""
keyInput.PlaceholderText = "Enter your premium key..."
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
keyInput.PlaceholderColor3 = Color3.fromRGB(100, 100, 120)
keyInput.TextSize = 15
keyInput.Font = Enum.Font.Gotham
keyInput.TextXAlignment = Enum.TextXAlignment.Left
keyInput.Parent = inputFrame

keyInput.Focused:Connect(function()
    game:GetService("TweenService"):Create(inputStroke, TweenInfo.new(0.3), {
        Color = Color3.fromRGB(138, 43, 226),
        Transparency = 0
    }):Play()
end)

keyInput.FocusLost:Connect(function(enterPressed)
    game:GetService("TweenService"):Create(inputStroke, TweenInfo.new(0.3), {
        Color = Color3.fromRGB(50, 50, 70),
        Transparency = 0.5
    }):Play()
end)

local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, 0, 0, 25)
statusLabel.Position = UDim2.new(0, 0, 0, 145)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = "• Ready to verify your key"
statusLabel.TextColor3 = Color3.fromRGB(140, 140, 160)
statusLabel.TextSize = 13
statusLabel.Font = Enum.Font.Gotham
statusLabel.TextXAlignment = Enum.TextXAlignment.Left
statusLabel.TextYAlignment = Enum.TextYAlignment.Center
statusLabel.Parent = contentFrame

local linkLabel = Instance.new("TextLabel")
linkLabel.Size = UDim2.new(1, 0, 0, 50)
linkLabel.Position = UDim2.new(0, 0, 0, 175)
linkLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
linkLabel.BorderSizePixel = 0
linkLabel.Text = KEY_SITE_URL
linkLabel.TextColor3 = Color3.fromRGB(138, 43, 226)
linkLabel.TextSize = 12
linkLabel.Font = Enum.Font.GothamBold
linkLabel.TextWrapped = true
linkLabel.TextYAlignment = Enum.TextYAlignment.Center
linkLabel.Parent = contentFrame

local linkCorner = Instance.new("UICorner")
linkCorner.CornerRadius = UDim.new(0, 8)
linkCorner.Parent = linkLabel

local linkStroke = Instance.new("UIStroke")
linkStroke.Color = Color3.fromRGB(50, 50, 70)
linkStroke.Thickness = 1
linkStroke.Transparency = 0.5
linkStroke.Parent = linkLabel

local buttonFrame = Instance.new("Frame")
buttonFrame.Size = UDim2.new(1, 0, 0, 52)
buttonFrame.Position = UDim2.new(0, 0, 0, 230)
buttonFrame.BackgroundTransparency = 1
buttonFrame.Parent = contentFrame

local submitButton = Instance.new("TextButton")
submitButton.Size = UDim2.new(0.48, 0, 1, 0)
submitButton.Position = UDim2.new(0, 0, 0, 0)
submitButton.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
submitButton.BorderSizePixel = 0
submitButton.Text = "Verify Key"
submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
submitButton.TextSize = 15
submitButton.Font = Enum.Font.GothamBold
submitButton.Parent = buttonFrame

local submitCorner = Instance.new("UICorner")
submitCorner.CornerRadius = UDim.new(0, 10)
submitCorner.Parent = submitButton

local submitGradient = Instance.new("UIGradient")
submitGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 43, 226)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 0, 130))
}
submitGradient.Rotation = 45
submitGradient.Parent = submitButton

submitButton.MouseEnter:Connect(function()
    game:GetService("TweenService"):Create(submitButton, TweenInfo.new(0.2), {
        Size = UDim2.new(0.48, 0, 1, 4)
    }):Play()
end)

submitButton.MouseLeave:Connect(function()
    game:GetService("TweenService"):Create(submitButton, TweenInfo.new(0.2), {
        Size = UDim2.new(0.48, 0, 1, 0)
    }):Play()
end)

local getKeyButton = Instance.new("TextButton")
getKeyButton.Size = UDim2.new(0.48, 0, 1, 0)
getKeyButton.Position = UDim2.new(0.52, 0, 0, 0)
getKeyButton.BackgroundColor3 = Color3.fromRGB(30, 30, 42)
getKeyButton.BorderSizePixel = 0
getKeyButton.Text = "Get Key"
getKeyButton.TextColor3 = Color3.fromRGB(200, 150, 255)
getKeyButton.TextSize = 15
getKeyButton.Font = Enum.Font.GothamBold
getKeyButton.Parent = buttonFrame

local getKeyCorner = Instance.new("UICorner")
getKeyCorner.CornerRadius = UDim.new(0, 10)
getKeyCorner.Parent = getKeyButton

local getKeyStroke = Instance.new("UIStroke")
getKeyStroke.Color = Color3.fromRGB(138, 43, 226)
getKeyStroke.Thickness = 1.5
getKeyStroke.Transparency = 0.4
getKeyStroke.Parent = getKeyButton

getKeyButton.MouseEnter:Connect(function()
    game:GetService("TweenService"):Create(getKeyButton, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.fromRGB(40, 40, 55),
        Size = UDim2.new(0.48, 0, 1, 4)
    }):Play()
    game:GetService("TweenService"):Create(getKeyStroke, TweenInfo.new(0.2), {
        Transparency = 0
    }):Play()
end)

getKeyButton.MouseLeave:Connect(function()
    game:GetService("TweenService"):Create(getKeyButton, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.fromRGB(30, 30, 42),
        Size = UDim2.new(0.48, 0, 1, 0)
    }):Play()
    game:GetService("TweenService"):Create(getKeyStroke, TweenInfo.new(0.2), {
        Transparency = 0.4
    }):Play()
end)

local keyValidated = false
local guiClosed = false
_G.script_key = nil
script_key = nil

local function updateStatus(message, color)
    statusLabel.Text = "• " .. message
    statusLabel.TextColor3 = color or Color3.fromRGB(140, 140, 160)
    loadingText.Text = message
end

local function saveKey(key)
    if writefile then
        pcall(function()
            writefile(SAVE_FILE, key)
        end)
    end
end

local function loadSavedKey()
    if readfile and isfile and isfile(SAVE_FILE) then
        local success, key = pcall(function()
            return readfile(SAVE_FILE)
        end)
        if success and key and key ~= "" then
            return key
        end
    end
    return nil
end

local function validateKey(keyText)
    if keyText == "" or keyText == nil then
        updateStatus("Please enter a key", Color3.fromRGB(255, 150, 80))
        return false
    end
    loadingFrame.Visible = true
    spinTween:Play()
    updateStatus("Verifying key...", Color3.fromRGB(200, 150, 255))
    task.wait(1)
    keyValidated = true
    _G.script_key = keyText
    script_key = keyText
    saveKey(keyText)
    loadingFrame.Visible = false
    spinTween:Cancel()
    updateStatus("Key verified successfully!", Color3.fromRGB(100, 255, 150))
    task.wait(1)
    blur:Destroy()
    screenGui:Destroy()
    return true
end

submitButton.Activated:Connect(function()
    if not guiClosed and not keyValidated then
        validateKey(keyInput.Text)
    end
end)

getKeyButton.Activated:Connect(function()
    if setclipboard then
        setclipboard(KEY_SITE_URL)
        updateStatus("Link copied to clipboard!", Color3.fromRGB(100, 200, 255))
        getKeyButton.Text = "✓ Copied!"
        task.delay(2, function()
            getKeyButton.Text = "Get Key"
            updateStatus("Ready to verify your key", Color3.fromRGB(140, 140, 160))
        end)
    end
end)

closeButton.Activated:Connect(function()
    guiClosed = true
    blur:Destroy()
    screenGui:Destroy()
end)

local savedKey = loadSavedKey()
if savedKey then
    keyInput.Text = savedKey
    updateStatus("Saved key loaded - click verify", Color3.fromRGB(100, 200, 255))
end

repeat task.wait() until keyValidated or guiClosed

if keyValidated and _G.script_key then
    script_key = _G.script_key
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/welomenchaina/KaliHub/refs/heads/main/LuarmorGameLoader.lua",true))()
    end)
end
