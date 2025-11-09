-- LocalScript para criar a GUI completa (versão mesclada e corrigida)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Criar ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "RealHubGui"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = PlayerGui

-- Serviços utilitários (se quiser usar depois)
local RunService = game:GetService("RunService")

-- ==================== FRAME PRINCIPAL ====================
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Visible = false
MainFrame.BorderSizePixel = 0
MainFrame.BackgroundColor3 = Color3.fromRGB(13, 43, 85)
MainFrame.Size = UDim2.new(0, 590, 0, 348)
MainFrame.Position = UDim2.new(0, 178, 0, 14)
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = MainFrame

-- ==================== SIDEBAR ====================
local SidebarFrame = Instance.new("Frame")
SidebarFrame.Name = "Sidebar"
SidebarFrame.BorderSizePixel = 0
SidebarFrame.BackgroundColor3 = Color3.fromRGB(10, 33, 65)
SidebarFrame.Size = UDim2.new(0, 116, 0, 214)
SidebarFrame.Position = UDim2.new(0, 24, 0, 112)
SidebarFrame.Parent = MainFrame

local SidebarCorner = Instance.new("UICorner")
SidebarCorner.Parent = SidebarFrame

-- Botões da Sidebar (criaremos referencias para conectar depois)
local function makeSidebarButton(name, text, posY)
    local b = Instance.new("TextButton")
    b.Name = name
    b.BorderSizePixel = 0
    b.TextSize = 10
    b.TextColor3 = Color3.fromRGB(172, 172, 172)
    b.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    b.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    b.BackgroundTransparency = 1
    b.Size = UDim2.new(0, 72, 0, 14)
    b.Text = text
    b.Position = UDim2.new(0, 22, 0, posY)
    b.Parent = SidebarFrame
    return b
end

local MainBtn    = makeSidebarButton("MainBtn", "Main", 18)
local StealerBtn = makeSidebarButton("StealerBtn", "Stealer", 38)
local HelperBtn  = makeSidebarButton("HelperBtn", "Helper", 60)
local PlayersBtn = makeSidebarButton("PlayersBtn", "Player", 74)
local ServerBtn  = makeSidebarButton("ServerBtn", "Server", 90)
local DiscordBtn = makeSidebarButton("DiscordBtn", "Discord", 104)

-- ==================== HEADER ====================
local HeaderFrame = Instance.new("Frame")
HeaderFrame.Name = "Header"
HeaderFrame.BorderSizePixel = 0
HeaderFrame.BackgroundColor3 = Color3.fromRGB(10, 33, 65)
HeaderFrame.Size = UDim2.new(0, 552, 0, 90)
HeaderFrame.Position = UDim2.new(0, 20, 0, 8)
HeaderFrame.Parent = MainFrame

local HeaderCorner = Instance.new("UICorner")
HeaderCorner.Parent = HeaderFrame

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "Title"
TitleLabel.BorderSizePixel = 0
TitleLabel.TextSize = 24
TitleLabel.BackgroundTransparency = 1
TitleLabel.Size = UDim2.new(0, 156, 0, 40)
TitleLabel.Text = "Real hub"
TitleLabel.Position = UDim2.new(0, 0, 0, 26)
TitleLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TitleLabel.TextColor3 = Color3.fromRGB(241, 241, 241)
TitleLabel.Parent = HeaderFrame

local Divider = Instance.new("Frame")
Divider.Name = "Divider"
Divider.BorderSizePixel = 0
Divider.BackgroundColor3 = Color3.fromRGB(13, 43, 85)
Divider.Size = UDim2.new(0, 16, 0, 90)
Divider.Position = UDim2.new(0, 152, 0, 0)
Divider.Parent = HeaderFrame

local CreditsLabel = Instance.new("TextLabel")
CreditsLabel.Name = "Credits"
CreditsLabel.BorderSizePixel = 0
CreditsLabel.TextSize = 24
CreditsLabel.BackgroundTransparency = 1
CreditsLabel.Size = UDim2.new(0, 146, 0, 40)
CreditsLabel.Text = "By: Script corp"
CreditsLabel.Position = UDim2.new(0, 180, 0, 14)
CreditsLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
CreditsLabel.TextColor3 = Color3.fromRGB(241, 241, 241)
CreditsLabel.Parent = HeaderFrame

local DescLabel = Instance.new("TextLabel")
DescLabel.Name = "Description"
DescLabel.TextWrapped = true
DescLabel.BorderSizePixel = 0
DescLabel.TextSize = 24
DescLabel.BackgroundTransparency = 1
DescLabel.Size = UDim2.new(0, 232, 0, 208)
DescLabel.Text = "Join our Discord server for more great scripts like this one."
DescLabel.Position = UDim2.new(0, 316, 0, -64)
DescLabel.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
DescLabel.TextColor3 = Color3.fromRGB(241, 241, 241)
DescLabel.Parent = HeaderFrame

-- ==================== PÁGINAS ====================
-- vamos criar placeholders e depois popular cada página com objetos
local MainPage = Instance.new("ScrollingFrame")
MainPage.Name = "MainPage"
MainPage.Visible = false
MainPage.BorderSizePixel = 0
MainPage.BackgroundColor3 = Color3.fromRGB(10, 33, 65)
MainPage.Size = UDim2.new(0, 412, 0, 224)
MainPage.Position = UDim2.new(0, 332, 0, 118)
MainPage.Parent = ScreenGui

local StealerPage = Instance.new("Frame")
StealerPage.Name = "StealerPage"
StealerPage.Visible = false
StealerPage.BorderSizePixel = 0
StealerPage.BackgroundColor3 = Color3.fromRGB(13, 43, 85)
StealerPage.Size = UDim2.new(0, 414, 0, 218)
StealerPage.Position = UDim2.new(0, 330, 0, 124)
StealerPage.Parent = ScreenGui

local HelperPage = Instance.new("Frame")
HelperPage.Name = "HelperPage"
HelperPage.Visible = false
HelperPage.BorderSizePixel = 0
HelperPage.BackgroundColor3 = Color3.fromRGB(13, 43, 85)
HelperPage.Size = UDim2.new(0, 414, 0, 218)
HelperPage.Position = UDim2.new(0, 330, 0, 124)
HelperPage.Parent = ScreenGui

local PlayerPage = Instance.new("Frame")
PlayerPage.Name = "PlayerPage"
PlayerPage.Visible = false
PlayerPage.BorderSizePixel = 0
PlayerPage.BackgroundColor3 = Color3.fromRGB(10, 33, 65)
PlayerPage.Size = UDim2.new(0, 414, 0, 214)
PlayerPage.Position = UDim2.new(0, 338, 0, 126)
PlayerPage.Parent = ScreenGui

local ServerPage = Instance.new("Frame")
ServerPage.Name = "ServerPage"
ServerPage.Visible = false
ServerPage.BorderSizePixel = 0
ServerPage.BackgroundColor3 = Color3.fromRGB(10, 33, 65)
ServerPage.Size = UDim2.new(0, 414, 0, 214)
ServerPage.Position = UDim2.new(0, 338, 0, 126)
ServerPage.Parent = ScreenGui

local DiscordPage = Instance.new("Frame")
DiscordPage.Name = "DiscordPage"
DiscordPage.Visible = false
DiscordPage.BorderSizePixel = 0
DiscordPage.BackgroundColor3 = Color3.fromRGB(10, 33, 65)
DiscordPage.Size = UDim2.new(0, 414, 0, 214)
DiscordPage.Position = UDim2.new(0, 338, 0, 126)
DiscordPage.Parent = ScreenGui

-- adicionar cantos (opcional)
for _, frame in ipairs({MainPage, StealerPage, HelperPage, PlayerPage, ServerPage, DiscordPage}) do
    local c = Instance.new("UICorner")
    c.Parent = frame
end

-- ==================== Conteúdo da MainPage (exemplos) ====================
local MainContentFrame = Instance.new("Frame")
MainContentFrame.Name = "Content"
MainContentFrame.BorderSizePixel = 0
MainContentFrame.BackgroundColor3 = Color3.fromRGB(13, 43, 85)
MainContentFrame.Size = UDim2.new(0, 380, 0, 192)
MainContentFrame.Position = UDim2.new(0, 16, 0, 8)
MainContentFrame.Parent = MainPage

local MainContentCorner = Instance.new("UICorner")
MainContentCorner.CornerRadius = UDim.new(0, 10)
MainContentCorner.Parent = MainContentFrame

local FarmTitle = Instance.new("TextLabel")
FarmTitle.Name = "FarmTitle"
FarmTitle.BorderSizePixel = 0
FarmTitle.TextSize = 18
FarmTitle.BackgroundTransparency = 1
FarmTitle.Size = UDim2.new(0, 82, 0, 20)
FarmTitle.Text = "Farm"
FarmTitle.Position = UDim2.new(0, 22, 0, 12)
FarmTitle.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
FarmTitle.TextColor3 = Color3.fromRGB(184, 184, 184)
FarmTitle.Parent = MainPage

local MinMoneyButton = Instance.new("TextButton")
MinMoneyButton.Name = "MinMoneyButton"
MinMoneyButton.BorderSizePixel = 0
MinMoneyButton.TextSize = 11
MinMoneyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinMoneyButton.BackgroundColor3 = Color3.fromRGB(10, 33, 65)
MinMoneyButton.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
MinMoneyButton.Size = UDim2.new(0, 198, 0, 26)
MinMoneyButton.Text = "Min money per sec to buy...."
MinMoneyButton.Position = UDim2.new(0, 174, 0, 0)
MinMoneyButton.Parent = MainContentFrame

-- alguns labels de exemplo
local AutoBuyLabel = Instance.new("TextLabel")
AutoBuyLabel.Name = "AutoBuyLabel"
AutoBuyLabel.BorderSizePixel = 0
AutoBuyLabel.TextSize = 12
AutoBuyLabel.BackgroundTransparency = 1
AutoBuyLabel.Size = UDim2.new(0, 82, 0, 20)
AutoBuyLabel.Text = "Auto buy brainrot"
AutoBuyLabel.Position = UDim2.new(0, 22, 0, 46)
AutoBuyLabel.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
AutoBuyLabel.TextColor3 = Color3.fromRGB(184, 184, 184)
AutoBuyLabel.Parent = MainPage

local AntiAfkLabel = Instance.new("TextLabel")
AntiAfkLabel.Name = "AntiAfkLabel"
AntiAfkLabel.BorderSizePixel = 0
AntiAfkLabel.TextSize = 12
AntiAfkLabel.BackgroundTransparency = 1
AntiAfkLabel.Size = UDim2.new(0, 82, 0, 20)
AntiAfkLabel.Text = "Anti Afk"
AntiAfkLabel.Position = UDim2.new(0, 24, 0, 78)
AntiAfkLabel.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
AntiAfkLabel.TextColor3 = Color3.fromRGB(184, 184, 184)
AntiAfkLabel.Parent = MainPage

-- ==================== StealerPage (exemplos de labels) ====================
local StealerTitle = Instance.new("TextLabel")
StealerTitle.Name = "StealerTitle"
StealerTitle.BorderSizePixel = 0
StealerTitle.TextSize = 18
StealerTitle.BackgroundTransparency = 1
StealerTitle.Size = UDim2.new(0, 82, 0, 20)
StealerTitle.Text = "Stealer"
StealerTitle.Position = UDim2.new(0, 22, 0, 12)
StealerTitle.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
StealerTitle.TextColor3 = Color3.fromRGB(184, 184, 184)
StealerTitle.Parent = StealerPage

local StealUpstairsLabel = Instance.new("TextLabel")
StealUpstairsLabel.Name = "StealUpstairsLabel"
StealUpstairsLabel.BorderSizePixel = 0
StealUpstairsLabel.TextSize = 12
StealUpstairsLabel.BackgroundTransparency = 1
StealUpstairsLabel.Size = UDim2.new(0, 140, 0, 30)
StealUpstairsLabel.Text = "Steal Upstairs -- Y Keybind"
StealUpstairsLabel.Position = UDim2.new(0, 56, 0, 38)
StealUpstairsLabel.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
StealUpstairsLabel.TextColor3 = Color3.fromRGB(184, 184, 184)
StealUpstairsLabel.Parent = StealerPage

-- ==================== HelperPage (Utility) ====================
local HelperTitle = Instance.new("TextLabel")
HelperTitle.Name = "HelperTitle"
HelperTitle.BorderSizePixel = 0
HelperTitle.TextSize = 18
HelperTitle.BackgroundTransparency = 1
HelperTitle.Size = UDim2.new(0, 82, 0, 20)
HelperTitle.Text = "Utility"
HelperTitle.Position = UDim2.new(0, 22, 0, 12)
HelperTitle.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
HelperTitle.TextColor3 = Color3.fromRGB(184, 184, 184)
HelperTitle.Parent = HelperPage

-- Utility Frame
local UtilityFrame = Instance.new("Frame")
UtilityFrame.Name = "UtilityFrame"
UtilityFrame.BorderSizePixel = 0
UtilityFrame.BackgroundColor3 = Color3.fromRGB(10, 33, 65)
UtilityFrame.Size = UDim2.new(0, 366, 0, 92)
UtilityFrame.Position = UDim2.new(0, 20, 0, 10)
UtilityFrame.Parent = HelperPage

local UtilityCorner = Instance.new("UICorner")
UtilityCorner.Parent = UtilityFrame

local AimbotLabel = Instance.new("TextLabel")
AimbotLabel.Name = "AimbotLabel"
AimbotLabel.BorderSizePixel = 0
AimbotLabel.TextSize = 12
AimbotLabel.BackgroundTransparency = 1
AimbotLabel.Size = UDim2.new(0, 82, 0, 18)
AimbotLabel.Text = "Aimbot"
AimbotLabel.Position = UDim2.new(0, 0, 0, 28)
AimbotLabel.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
AimbotLabel.TextColor3 = Color3.fromRGB(184, 184, 184)
AimbotLabel.Parent = UtilityFrame

local FlyBrainrotLabel = Instance.new("TextLabel")
FlyBrainrotLabel.Name = "FlyBrainrotLabel"
FlyBrainrotLabel.BorderSizePixel = 0
FlyBrainrotLabel.TextSize = 12
FlyBrainrotLabel.BackgroundTransparency = 1
FlyBrainrotLabel.Size = UDim2.new(0, 160, 0, 18)
FlyBrainrotLabel.Text = "Fly to highest value brainrot (C keybind)"
FlyBrainrotLabel.Position = UDim2.new(0, 80, 0, 58)
FlyBrainrotLabel.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
FlyBrainrotLabel.TextColor3 = Color3.fromRGB(184, 184, 184)
FlyBrainrotLabel.Parent = UtilityFrame

-- ==================== ESP Frame dentro do HelperPage ====================
local ESPFrame = Instance.new("Frame")
ESPFrame.Name = "ESPFrame"
ESPFrame.BorderSizePixel = 0
ESPFrame.BackgroundColor3 = Color3.fromRGB(10, 33, 65)
ESPFrame.Size = UDim2.new(0, 366, 0, 102)
ESPFrame.Position = UDim2.new(0, 22, 0, 108)
ESPFrame.Parent = HelperPage

local ESPCorner = Instance.new("UICorner")
ESPCorner.Parent = ESPFrame

local ESPTitle = Instance.new("TextLabel")
ESPTitle.Name = "ESPTitle"
ESPTitle.BorderSizePixel = 0
ESPTitle.TextSize = 18
ESPTitle.BackgroundTransparency = 1
ESPTitle.Size = UDim2.new(0, 82, 0, 20)
ESPTitle.Text = "Esp"
ESPTitle.Position = UDim2.new(0, -4, 0, 4)
ESPTitle.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
ESPTitle.TextColor3 = Color3.fromRGB(184, 184, 184)
ESPTitle.Parent = ESPFrame

local XRayLabel = Instance.new("TextLabel")
XRayLabel.Name = "XRayLabel"
XRayLabel.BorderSizePixel = 0
XRayLabel.TextSize = 12
XRayLabel.BackgroundTransparency = 1
XRayLabel.Size = UDim2.new(0, 82, 0, 18)
XRayLabel.Text = "X ray"
XRayLabel.Position = UDim2.new(0, 0, 0, 32)
XRayLabel.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
XRayLabel.TextColor3 = Color3.fromRGB(184, 184, 184)
XRayLabel.Parent = ESPFrame

local HighestBrainrotESP = Instance.new("TextLabel")
HighestBrainrotESP.Name = "HighestBrainrotESP"
HighestBrainrotESP.BorderSizePixel = 0
HighestBrainrotESP.TextSize = 12
HighestBrainrotESP.BackgroundTransparency = 1
HighestBrainrotESP.Size = UDim2.new(0, 82, 0, 18)
HighestBrainrotESP.Text = "Highest brainrot ESP"
HighestBrainrotESP.Position = UDim2.new(0, 20, 0, 48)
HighestBrainrotESP.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
HighestBrainrotESP.TextColor3 = Color3.fromRGB(184, 184, 184)
HighestBrainrotESP.Parent = ESPFrame

local TimerESPLabel = Instance.new("TextLabel")
TimerESPLabel.Name = "TimerESPLabel"
TimerESPLabel.BorderSizePixel = 0
TimerESPLabel.TextSize = 12
TimerESPLabel.BackgroundTransparency = 1
TimerESPLabel.Size = UDim2.new(0, 82, 0, 14)
TimerESPLabel.Text = "Timer ESP"
TimerESPLabel.Position = UDim2.new(0, 0, 0, 66)
TimerESPLabel.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TimerESPLabel.TextColor3 = Color3.fromRGB(184, 184, 184)
TimerESPLabel.Parent = ESPFrame

local PlayerESPLabel = Instance.new("TextLabel")
PlayerESPLabel.Name = "PlayerESPLabel"
PlayerESPLabel.BorderSizePixel = 0
PlayerESPLabel.TextSize = 12
PlayerESPLabel.BackgroundTransparency = 1
PlayerESPLabel.Size = UDim2.new(0, 82, 0, 14)
PlayerESPLabel.Text = "Player ESP"
PlayerESPLabel.Position = UDim2.new(0, 0, 0, 84)
PlayerESPLabel.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
PlayerESPLabel.TextColor3 = Color3.fromRGB(184, 184, 184)
PlayerESPLabel.Parent = ESPFrame

-- ==================== PÁGINA PLAYER (frames e labels) ====================
local PlayerFrame1 = Instance.new("Frame")
PlayerFrame1.Name = "PlayerFrame1"
PlayerFrame1.BorderSizePixel = 0
PlayerFrame1.BackgroundColor3 = Color3.fromRGB(13, 43, 85)
PlayerFrame1.Size = UDim2.new(0, 366, 0, 70)
PlayerFrame1.Position = UDim2.new(0, 20, 0, 10)
PlayerFrame1.Parent = PlayerPage

local PlayerFrame1Corner = Instance.new("UICorner")
PlayerFrame1Corner.Parent = PlayerFrame1

local PlayerTitle = Instance.new("TextLabel")
PlayerTitle.Name = "PlayerTitle"
PlayerTitle.BorderSizePixel = 0
PlayerTitle.TextSize = 18
PlayerTitle.BackgroundTransparency = 1
PlayerTitle.Size = UDim2.new(0, 82, 0, 18)
PlayerTitle.Text = "Player"
PlayerTitle.Position = UDim2.new(0, 0, 0, 6)
PlayerTitle.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
PlayerTitle.TextColor3 = Color3.fromRGB(184, 184, 184)
PlayerTitle.Parent = PlayerFrame1

local AntiRagdollLabel = Instance.new("TextLabel")
AntiRagdollLabel.Name = "AntiRagdollLabel"
AntiRagdollLabel.BorderSizePixel = 0
AntiRagdollLabel.TextSize = 12
AntiRagdollLabel.BackgroundTransparency = 1
AntiRagdollLabel.Size = UDim2.new(0, 82, 0, 18)
AntiRagdollLabel.Text = "Anti ragdoll"
AntiRagdollLabel.Position = UDim2.new(0, -2, 0, 30)
AntiRagdollLabel.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
AntiRagdollLabel.TextColor3 = Color3.fromRGB(184, 184, 184)
AntiRagdollLabel.Parent = PlayerFrame1

-- Frame 2 e 3
local PlayerFrame2 = Instance.new("Frame")
PlayerFrame2.Name = "PlayerFrame2"
PlayerFrame2.BorderSizePixel = 0
PlayerFrame2.BackgroundColor3 = Color3.fromRGB(13, 43, 85)
PlayerFrame2.Size = UDim2.new(0, 366, 0, 56)
PlayerFrame2.Position = UDim2.new(0, 20, 0, 88)
PlayerFrame2.Parent = PlayerPage

local PlayerFrame2Corner = Instance.new("UICorner")
PlayerFrame2Corner.Parent = PlayerFrame2

local SpeedBoosterLabel = Instance.new("TextLabel")
SpeedBoosterLabel.Name = "SpeedBoosterLabel"
SpeedBoosterLabel.BorderSizePixel = 0
SpeedBoosterLabel.TextSize = 12
SpeedBoosterLabel.BackgroundTransparency = 1
SpeedBoosterLabel.Size = UDim2.new(0, 220, 0, 18)
SpeedBoosterLabel.Text = "Speed booster (3 Rebirths required, Q Keybind on pc)"
SpeedBoosterLabel.Position = UDim2.new(0, 102, 0, 20)
SpeedBoosterLabel.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
SpeedBoosterLabel.TextColor3 = Color3.fromRGB(184, 184, 184)
SpeedBoosterLabel.Parent = PlayerFrame2

local PlayerFrame3 = Instance.new("Frame")
PlayerFrame3.Name = "PlayerFrame3"
PlayerFrame3.BorderSizePixel = 0
PlayerFrame3.BackgroundColor3 = Color3.fromRGB(13, 43, 85)
PlayerFrame3.Size = UDim2.new(0, 366, 0, 56)
PlayerFrame3.Position = UDim2.new(0, 20, 0, 152)
PlayerFrame3.Parent = PlayerPage

local PlayerFrame3Corner = Instance.new("UICorner")
PlayerFrame3Corner.Parent = PlayerFrame3

local SpeedBoosterLabel2 = Instance.new("TextLabel")
SpeedBoosterLabel2.Name = "SpeedBoosterLabel2"
SpeedBoosterLabel2.BorderSizePixel = 0
SpeedBoosterLabel2.TextSize = 12
SpeedBoosterLabel2.BackgroundTransparency = 1
SpeedBoosterLabel2.Size = UDim2.new(0, 82, 0, 18)
SpeedBoosterLabel2.Text = "Speed Booster"
SpeedBoosterLabel2.Position = UDim2.new(0, 10, 0, 12)
SpeedBoosterLabel2.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
SpeedBoosterLabel2.TextColor3 = Color3.fromRGB(184, 184, 184)
SpeedBoosterLabel2.Parent = PlayerFrame3

local RealBoosterUILabel = Instance.new("TextLabel")
RealBoosterUILabel.Name = "RealBoosterUILabel"
RealBoosterUILabel.BorderSizePixel = 0
RealBoosterUILabel.TextSize = 12
RealBoosterUILabel.BackgroundTransparency = 1
RealBoosterUILabel.Size = UDim2.new(0, 82, 0, 18)
RealBoosterUILabel.Text = "Real Booster UI"
RealBoosterUILabel.Position = UDim2.new(0, 10, 0, 34)
RealBoosterUILabel.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
RealBoosterUILabel.TextColor3 = Color3.fromRGB(184, 184, 184)
RealBoosterUILabel.Parent = PlayerFrame3

-- ==================== SERVER PAGE ====================
local ServerFrame = Instance.new("Frame")
ServerFrame.Name = "ServerFrame"
ServerFrame.BorderSizePixel = 0
ServerFrame.BackgroundColor3 = Color3.fromRGB(13, 43, 85)
ServerFrame.Size = UDim2.new(0, 366, 0, 192)
ServerFrame.Position = UDim2.new(0, 20, 0, 10)
ServerFrame.Parent = ServerPage

local ServerFrameCorner = Instance.new("UICorner")
ServerFrameCorner.Parent = ServerFrame

local ServerTitle = Instance.new("TextLabel")
ServerTitle.Name = "ServerTitle"
ServerTitle.BorderSizePixel = 0
ServerTitle.TextSize = 18
ServerTitle.BackgroundTransparency = 1
ServerTitle.Size = UDim2.new(0, 82, 0, 18)
ServerTitle.Text = "Server"
ServerTitle.Position = UDim2.new(0, 0, 0, 6)
ServerTitle.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
ServerTitle.TextColor3 = Color3.fromRGB(184, 184, 184)
ServerTitle.Parent = ServerFrame

local RejoinButton = Instance.new("TextButton")
RejoinButton.Name = "RejoinButton"
RejoinButton.BorderSizePixel = 0
RejoinButton.TextSize = 12
RejoinButton.TextColor3 = Color3.fromRGB(184, 184, 184)
RejoinButton.BackgroundTransparency = 1
RejoinButton.Size = UDim2.new(0, 102, 0, 20)
RejoinButton.Text = "Rejoin server"
RejoinButton.Position = UDim2.new(0, 2, 0, 34)
RejoinButton.Parent = ServerFrame

local ServerHopButton = Instance.new("TextButton")
ServerHopButton.Name = "ServerHopButton"
ServerHopButton.BorderSizePixel = 0
ServerHopButton.TextSize = 12
ServerHopButton.TextColor3 = Color3.fromRGB(184, 184, 184)
ServerHopButton.BackgroundTransparency = 1
ServerHopButton.Size = UDim2.new(0, 102, 0, 20)
ServerHopButton.Text = "Server Hop"
ServerHopButton.Position = UDim2.new(0, 12, 0, 60)
ServerHopButton.Parent = ServerFrame

-- ==================== DISCORD PAGE ====================
local DiscordFrame = Instance.new("Frame")
DiscordFrame.Name = "DiscordFrame"
DiscordFrame.BorderSizePixel = 0
DiscordFrame.BackgroundColor3 = Color3.fromRGB(13, 43, 85)
DiscordFrame.Size = UDim2.new(0, 366, 0, 192)
DiscordFrame.Position = UDim2.new(0, 20, 0, 10)
DiscordFrame.Parent = DiscordPage

local DiscordFrameCorner = Instance.new("UICorner")
DiscordFrameCorner.Parent = DiscordFrame

local DiscordTitle = Instance.new("TextLabel")
DiscordTitle.Name = "DiscordTitle"
DiscordTitle.BorderSizePixel = 0
DiscordTitle.TextSize = 18
DiscordTitle.BackgroundTransparency = 1
DiscordTitle.Size = UDim2.new(0, 82, 0, 18)
DiscordTitle.Text = "Discord"
DiscordTitle.Position = UDim2.new(0, 0, 0, 6)
DiscordTitle.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
DiscordTitle.TextColor3 = Color3.fromRGB(184, 184, 184)
DiscordTitle.Parent = DiscordFrame

local DiscordContentFrame = Instance.new("Frame")
DiscordContentFrame.Name = "DiscordContent"
DiscordContentFrame.BorderSizePixel = 0
DiscordContentFrame.BackgroundColor3 = Color3.fromRGB(10, 33, 65)
DiscordContentFrame.Size = UDim2.new(0, 326, 0, 152)
DiscordContentFrame.Position = UDim2.new(0, 18, 0, 28)
DiscordContentFrame.Parent = DiscordFrame

local DiscordContentCorner = Instance.new("UICorner")
DiscordContentCorner.Parent = DiscordContentFrame

local DiscordDescLabel = Instance.new("TextLabel")
DiscordDescLabel.Name = "DiscordDescription"
DiscordDescLabel.TextWrapped = true
DiscordDescLabel.BorderSizePixel = 0
DiscordDescLabel.TextSize = 11
DiscordDescLabel.BackgroundTransparency = 1
DiscordDescLabel.Size = UDim2.new(0, 262, 0, 110)
DiscordDescLabel.Text = "Thank you for using our script. For more information, please join our Discord server."
DiscordDescLabel.Position = UDim2.new(0, 28, 0, -20)
DiscordDescLabel.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
DiscordDescLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordDescLabel.Parent = DiscordContentFrame

local DiscordLinkBox = Instance.new("TextBox")
DiscordLinkBox.Name = "DiscordLink"
DiscordLinkBox.BorderSizePixel = 0
DiscordLinkBox.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordLinkBox.BackgroundTransparency = 1
DiscordLinkBox.Size = UDim2.new(0, 254, 0, 28)
DiscordLinkBox.Position = UDim2.new(0, 30, 0, 68)
DiscordLinkBox.Text = "https://discord.gg/qND6Z5Khj"
DiscordLinkBox.Parent = DiscordContentFrame

local CopyDiscordButton = Instance.new("TextButton")
CopyDiscordButton.Name = "CopyDiscord"
CopyDiscordButton.BorderSizePixel = 0
CopyDiscordButton.BackgroundColor3 = Color3.fromRGB(92, 73, 255)
CopyDiscordButton.Size = UDim2.new(0, 154, 0, 26)
CopyDiscordButton.Text = "Copy Discord"
CopyDiscordButton.Position = UDim2.new(0, 86, 0, 102)
CopyDiscordButton.Parent = DiscordContentFrame

local CopyDiscordCorner = Instance.new("UICorner")
CopyDiscordCorner.Parent = CopyDiscordButton

local CopyDiscordGradient = Instance.new("UIGradient")
CopyDiscordGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(210, 37, 255)),
    ColorSequenceKeypoint.new(0.096, Color3.fromRGB(210, 37, 255)),
    ColorSequenceKeypoint.new(0.753, Color3.fromRGB(106, 40, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(106, 40, 255))
}
CopyDiscordGradient.Parent = CopyDiscordButton

-- ==================== BOTÃO DE TOGGLE ====================
local ToggleButton = Instance.new("TextButton")
ToggleButton.Name = "ToggleButton"
ToggleButton.TextWrapped = true
ToggleButton.BorderSizePixel = 0
ToggleButton.TextSize = 24
ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.BackgroundColor3 = Color3.fromRGB(217, 217, 217)
ToggleButton.FontFace = Font.new("rbxasset://fonts/families/Guru.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
ToggleButton.Size = UDim2.new(0, 52, 0, 54)
ToggleButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.Text = "Real hub 👑"
ToggleButton.Position = UDim2.new(0, 14, 0, 6)
ToggleButton.Parent = ScreenGui

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(1, 0)
ToggleCorner.Parent = ToggleButton

local ToggleGradient = Instance.new("UIGradient")
ToggleGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(29, 14, 53)),
    ColorSequenceKeypoint.new(0.316, Color3.fromRGB(29, 14, 53)),
    ColorSequenceKeypoint.new(0.879, Color3.fromRGB(117, 31, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(117, 31, 255))
}
ToggleGradient.Parent = ToggleButton

-- ==================== BOTÕES EXTRAS (ocultos) ====================
local DesyncButton1 = Instance.new("TextButton")
DesyncButton1.Name = "DesyncButton"
DesyncButton1.BorderSizePixel = 0
DesyncButton1.TextColor3 = Color3.fromRGB(47, 144, 255)
DesyncButton1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DesyncButton1.Size = UDim2.new(0, 90, 0, 24)
DesyncButton1.Text = "Desnc"
DesyncButton1.Visible = false
DesyncButton1.Position = UDim2.new(0, 886, 0, -4)
DesyncButton1.Parent = ScreenGui

local DesyncCorner1 = Instance.new("UICorner")
DesyncCorner1.Parent = DesyncButton1

local DesyncGradient1 = Instance.new("UIGradient")
DesyncGradient1.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(253, 0, 0)),
    ColorSequenceKeypoint.new(0.775, Color3.fromRGB(0, 0, 0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
DesyncGradient1.Parent = DesyncButton1

local UpstairsButton = Instance.new("TextButton")
UpstairsButton.Name = "UpstairsButton"
UpstairsButton.BorderSizePixel = 0
UpstairsButton.TextColor3 = Color3.fromRGB(47, 144, 255)
UpstairsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UpstairsButton.Size = UDim2.new(0, 90, 0, 24)
UpstairsButton.Text = "UpStairs"
UpstairsButton.Visible = false
UpstairsButton.Position = UDim2.new(0, 784, 0, -4)
UpstairsButton.Parent = ScreenGui

local UpstairsCorner = Instance.new("UICorner")
UpstairsCorner.Parent = UpstairsButton

local UpstairsGradient = Instance.new("UIGradient")
UpstairsGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(253, 0, 0)),
    ColorSequenceKeypoint.new(0.775, Color3.fromRGB(0, 0, 0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
UpstairsGradient.Parent = UpstairsButton

-- ==================== SISTEMA DE NAVEGAÇÃO ====================
local currentPage = nil

local function hideAllPages()
    MainPage.Visible = false
    StealerPage.Visible = false
    HelperPage.Visible = false
    PlayerPage.Visible = false
    ServerPage.Visible = false
    DiscordPage.Visible = false
end

local function showPage(page)
    hideAllPages()
    page.Visible = true
    currentPage = page
end

-- conectar sidebar
MainBtn.MouseButton1Click:Connect(function() showPage(MainPage) end)
StealerBtn.MouseButton1Click:Connect(function() showPage(StealerPage) end)
HelperBtn.MouseButton1Click:Connect(function() showPage(HelperPage) end)
PlayersBtn.MouseButton1Click:Connect(function() showPage(PlayerPage) end)
ServerBtn.MouseButton1Click:Connect(function() showPage(ServerPage) end)
DiscordBtn.MouseButton1Click:Connect(function() showPage(DiscordPage) end)

-- Toggle do menu principal
ToggleButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
    if MainFrame.Visible and currentPage then
        currentPage.Visible = true
    else
        hideAllPages()
    end
end)

-- Função de copiar Discord (usa setclipboard, disponível em ambientes de exploit)
CopyDiscordButton.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(DiscordLinkBox.Text)
        CopyDiscordButton.Text = "Copied!"
        wait(2)
        CopyDiscordButton.Text = "Copy Discord"
    else
        -- fallback: só altera texto pra avisar que não foi possível
        CopyDiscordButton.Text = "Clipboard not available"
        wait(2)
        CopyDiscordButton.Text = "Copy Discord"
    end
end)

-- prints finais
print("✅ GUI Real Hub carregada com sucesso!")
print("🎮 Criado por: giq)
