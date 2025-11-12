local ScreenGui = Instance.new("ScreenGui")
local OpenButton = Instance.new("TextButton")
local MainFrame = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local MinimizeBtn = Instance.new("TextButton")
local CloseBtn = Instance.new("TextButton")
local Sidebar = Instance.new("Frame")
local ContentArea = Instance.new("Frame")

ScreenGui.Name = "RealHubGui"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

OpenButton.Name = "OpenButton"
OpenButton.Parent = ScreenGui
OpenButton.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
OpenButton.BorderSizePixel = 0
OpenButton.Position = UDim2.new(0.9, 0, 0.85, 0)
OpenButton.Size = UDim2.new(0, 55, 0, 55)
OpenButton.Font = Enum.Font.GothamBold
OpenButton.Text = "●"
OpenButton.TextColor3 = Color3.fromRGB(150, 150, 150)
OpenButton.TextSize = 35
OpenButton.Active = true
OpenButton.Draggable = true

local OpenButtonCorner = Instance.new("UICorner")
OpenButtonCorner.CornerRadius = UDim.new(1, 0)
OpenButtonCorner.Parent = OpenButton

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(24, 26, 31)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, -325, 0.5, -225)
MainFrame.Size = UDim2.new(0, 650, 0, 450)
MainFrame.Visible = false
MainFrame.Active = true
MainFrame.Draggable = true

local MainFrameCorner = Instance.new("UICorner")
MainFrameCorner.CornerRadius = UDim.new(0, 10)
MainFrameCorner.Parent = MainFrame

TopBar.Name = "TopBar"
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(20, 22, 26)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(1, 0, 0, 45)

local TopBarCorner = Instance.new("UICorner")
TopBarCorner.CornerRadius = UDim.new(0, 10)
TopBarCorner.Parent = TopBar

local TopBarFix = Instance.new("Frame")
TopBarFix.Parent = TopBar
TopBarFix.BackgroundColor3 = Color3.fromRGB(20, 22, 26)
TopBarFix.BorderSizePixel = 0
TopBarFix.Position = UDim2.new(0, 0, 1, -10)
TopBarFix.Size = UDim2.new(1, 0, 0, 10)

Title.Name = "Title"
Title.Parent = TopBar
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 15, 0, 0)
Title.Size = UDim2.new(0, 350, 1, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "Steal a Brainrot - Real Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 13
Title.TextXAlignment = Enum.TextXAlignment.Left

MinimizeBtn.Name = "MinimizeBtn"
MinimizeBtn.Parent = TopBar
MinimizeBtn.BackgroundTransparency = 1
MinimizeBtn.Position = UDim2.new(1, -70, 0, 0)
MinimizeBtn.Size = UDim2.new(0, 35, 1, 0)
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.Text = "-"
MinimizeBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
MinimizeBtn.TextSize = 22

CloseBtn.Name = "CloseBtn"
CloseBtn.Parent = TopBar
CloseBtn.BackgroundTransparency = 1
CloseBtn.Position = UDim2.new(1, -35, 0, 0)
CloseBtn.Size = UDim2.new(0, 35, 1, 0)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
CloseBtn.TextSize = 15

Sidebar.Name = "Sidebar"
Sidebar.Parent = MainFrame
Sidebar.BackgroundColor3 = Color3.fromRGB(16, 18, 22)
Sidebar.BorderSizePixel = 0
Sidebar.Position = UDim2.new(0, 0, 0, 45)
Sidebar.Size = UDim2.new(0, 200, 1, -45)

local SidebarCorner = Instance.new("UICorner")
SidebarCorner.CornerRadius = UDim.new(0, 10)
SidebarCorner.Parent = Sidebar

local SidebarFix = Instance.new("Frame")
SidebarFix.Parent = Sidebar
SidebarFix.BackgroundColor3 = Color3.fromRGB(12, 12, 13)
SidebarFix.BorderSizePixel = 0
SidebarFix.Position = UDim2.new(1, -10, 0, 0)
SidebarFix.Size = UDim2.new(0, 10, 1, 0)

local SidebarFix2 = Instance.new("Frame")
SidebarFix2.Parent = Sidebar
SidebarFix2.BackgroundColor3 = Color3.fromRGB(12, 12, 13)
SidebarFix2.BorderSizePixel = 0
SidebarFix2.Position = UDim2.new(0, 0, 0, 0)
SidebarFix2.Size = UDim2.new(1, 0, 0, 10)

ContentArea.Name = "ContentArea"
ContentArea.Parent = MainFrame
ContentArea.BackgroundColor3 = Color3.fromRGB(24, 24, 26)
ContentArea.BorderSizePixel = 0
ContentArea.Position = UDim2.new(0, 200, 0, 45)
ContentArea.Size = UDim2.new(1, -200, 1, -45)

local ContentCorner = Instance.new("UICorner")
ContentCorner.CornerRadius = UDim.new(0, 10)
ContentCorner.Parent = ContentArea

local ContentFix = Instance.new("Frame")
ContentFix.Parent = ContentArea
ContentFix.BackgroundColor3 = Color3.fromRGB(24, 24, 26)
ContentFix.BorderSizePixel = 0
ContentFix.Position = UDim2.new(0, 0, 0, 0)
ContentFix.Size = UDim2.new(0, 10, 1, 0)

local ContentFix2 = Instance.new("Frame")
ContentFix2.Parent = ContentArea
ContentFix2.BackgroundColor3 = Color3.fromRGB(24, 24, 26)
ContentFix2.BorderSizePixel = 0
ContentFix2.Position = UDim2.new(0, 0, 0, 0)
ContentFix2.Size = UDim2.new(1, 0, 0, 10)

local function createSidebarButton(text, position, parent)
    local button = Instance.new("TextButton")
    button.Name = text:gsub(" ", "")
    button.Parent = parent
    button.BackgroundColor3 = Color3.fromRGB(20, 20, 22)
    button.BorderSizePixel = 0
    button.Position = UDim2.new(0, 10, 0, 10 + (position * 50))
    button.Size = UDim2.new(1, -20, 0, 42)
    button.Font = Enum.Font.Gotham
    button.Text = text
    button.TextColor3 = Color3.fromRGB(140, 140, 140)
    button.TextSize = 12
    button.TextXAlignment = Enum.TextXAlignment.Left
    button.AutoButtonColor = false
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = button
    local padding = Instance.new("UIPadding")
    padding.PaddingLeft = UDim.new(0, 15)
    padding.Parent = button
    return button
end

local MainBtn = createSidebarButton("Main", 0, Sidebar)
local StealerBtn = createSidebarButton("Stealer (New)", 1, Sidebar)
local HelperBtn = createSidebarButton("Helper (New)", 2, Sidebar)
local PlayerBtn = createSidebarButton("Player", 3, Sidebar)
local FinderBtn = createSidebarButton("Finder", 4, Sidebar)
local ServerBtn = createSidebarButton("Server", 5, Sidebar)
local DiscordBtn = createSidebarButton("Discord", 6, Sidebar)

local function createTabContent(name, parent)
    local scroll = Instance.new("ScrollingFrame")
    scroll.Name = name .. "Content"
    scroll.Parent = parent
    scroll.BackgroundTransparency = 1
    scroll.BorderSizePixel = 0
    scroll.Size = UDim2.new(1, 0, 1, 0)
    scroll.ScrollBarThickness = 3
    scroll.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 60)
    scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
    scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
    scroll.Visible = false
    local layout = Instance.new("UIListLayout")
    layout.Parent = scroll
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.Padding = UDim.new(0, 20)
    local padding = Instance.new("UIPadding")
    padding.PaddingTop = UDim.new(0, 15)
    padding.PaddingBottom = UDim.new(0, 15)
    padding.PaddingLeft = UDim.new(0, 20)
    padding.PaddingRight = UDim.new(0, 20)
    padding.Parent = scroll
    return scroll
end
