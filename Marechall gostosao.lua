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

-- Barra Superior (Menor)
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

-- Título (Texto menor)
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

-- Botão Minimizar (Menor)
MinimizeBtn.Name = "MinimizeBtn"
MinimizeBtn.Parent = TopBar
MinimizeBtn.BackgroundTransparency = 1
MinimizeBtn.Position = UDim2.new(1, -70, 0, 0)
MinimizeBtn.Size = UDim2.new(0, 35, 1, 0)
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.Text = "-"
MinimizeBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
MinimizeBtn.TextSize = 22

-- Botão Fechar (Menor)
CloseBtn.Name = "CloseBtn"
CloseBtn.Parent = TopBar
CloseBtn.BackgroundTransparency = 1
CloseBtn.Position = UDim2.new(1, -35, 0, 0)
CloseBtn.Size = UDim2.new(0, 35, 1, 0)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
CloseBtn.TextSize = 15

-- Sidebar (Menu Lateral - Menor)
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

-- Área de Conteúdo (Ajustada)
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

-- Função para criar botões da Sidebar (Menores)
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

-- Criar botões da Sidebar
local MainBtn = createSidebarButton("Main", 0, Sidebar)
local StealerBtn = createSidebarButton("Stealer (New)", 1, Sidebar)
local HelperBtn = createSidebarButton("Helper (New)", 2, Sidebar)
local PlayerBtn = createSidebarButton("Player", 3, Sidebar)
local FinderBtn = createSidebarButton("Finder", 4, Sidebar)
local ServerBtn = createSidebarButton("Server", 5, Sidebar)
local DiscordBtn = createSidebarButton("Discord", 6, Sidebar)

-- Função para criar conteúdo de aba
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

-- Criar conteúdos
local MainContent = createTabContent("Main", ContentArea)
local StealerContent = createTabContent("Stealer", ContentArea)
local HelperContent = createTabContent("Helper", ContentArea)
local PlayerContent = createTabContent("Player", ContentArea)
local FinderContent = createTabContent("Finder", ContentArea)
local ServerContent = createTabContent("Server", ContentArea)
local DiscordContent = createTabContent("Discord", ContentArea)

-- Função para criar seção
local function createSection(parent, sectionTitle)
    local section = Instance.new("Frame")
    section.Name = sectionTitle:gsub(" ", "")
    section.Parent = parent
    section.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
    section.BorderSizePixel = 0
    section.Size = UDim2.new(1, 0, 0, 0)
    section.AutomaticSize = Enum.AutomaticSize.Y
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = section
    
    local title = Instance.new("TextLabel")
    title.Name = "SectionTitle"
    title.Parent = section
    title.BackgroundTransparency = 1
    title.Size = UDim2.new(1, 0, 0, 50)
    title.Font = Enum.Font.GothamBold
    title.Text = sectionTitle
    title.TextColor3 = Color3.fromRGB(220, 220, 220)
    title.TextSize = 15
    title.TextXAlignment = Enum.TextXAlignment.Left
    
    local titlePadding = Instance.new("UIPadding")
    titlePadding.PaddingLeft = UDim.new(0, 20)
    titlePadding.Parent = title
    
    local dropdown = Instance.new("ImageLabel")
    dropdown.Name = "Dropdown"
    dropdown.Parent = title
    dropdown.BackgroundTransparency = 1
    dropdown.Position = UDim2.new(1, -30, 0.5, -6)
    dropdown.Size = UDim2.new(0, 12, 0, 12)
    dropdown.Image = "rbxassetid://3926305904"
    dropdown.ImageColor3 = Color3.fromRGB(140, 140, 140)
    dropdown.Rotation = 180
    
    local layout = Instance.new("UIListLayout")
    layout.Parent = section
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.Padding = UDim.new(0, 0)
    
    local sectionPadding = Instance.new("UIPadding")
    sectionPadding.PaddingTop = UDim.new(0, 15)
    sectionPadding.PaddingBottom = UDim.new(0, 15)
    sectionPadding.PaddingLeft = UDim.new(0, 20)
    sectionPadding.PaddingRight = UDim.new(0, 20)
    sectionPadding.Parent = section
    
    return section
end

-- Função para criar Toggle
local function createToggle(parent, text)
    local toggle = Instance.new("Frame")
    toggle.Name = "Toggle"
    toggle.Parent = parent
    toggle.BackgroundTransparency = 1
    toggle.Size = UDim2.new(1, 0, 0, 40)
    
    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Parent = toggle
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(1, -70, 1, 0)
    label.Font = Enum.Font.Gotham
    label.Text = text
    label.TextColor3 = Color3.fromRGB(180, 180, 180)
    label.TextSize = 13
    label.TextXAlignment = Enum.TextXAlignment.Left
    
    local switch = Instance.new("Frame")
    switch.Name = "Switch"
    switch.Parent = toggle
    switch.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
    switch.Position = UDim2.new(1, -55, 0.5, -12)
    switch.Size = UDim2.new(0, 50, 0, 24)
    
    local switchCorner = Instance.new("UICorner")
    switchCorner.CornerRadius = UDim.new(1, 0)
    switchCorner.Parent = switch
    
    local indicator = Instance.new("Frame")
    indicator.Name = "Indicator"
    indicator.Parent = switch
    indicator.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    indicator.Position = UDim2.new(0, 3, 0.5, -9)
    indicator.Size = UDim2.new(0, 18, 0, 18)
    
    local indicatorCorner = Instance.new("UICorner")
    indicatorCorner.CornerRadius = UDim.new(1, 0)
    indicatorCorner.Parent = indicator
    
    return toggle
end

-- Função para criar TextBox
local function createTextBox(parent, placeholder)
    local box = Instance.new("Frame")
    box.Name = "TextBox"
    box.Parent = parent
    box.BackgroundTransparency = 1
    box.Size = UDim2.new(1, 0, 0, 40)
    
    local textbox = Instance.new("TextBox")
    textbox.Name = "Input"
    textbox.Parent = box
    textbox.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    textbox.BorderSizePixel = 0
    textbox.Size = UDim2.new(1, 0, 1, 0)
    textbox.Font = Enum.Font.Gotham
    textbox.PlaceholderText = placeholder
    textbox.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
    textbox.Text = ""
    textbox.TextColor3 = Color3.fromRGB(180, 180, 180)
    textbox.TextSize = 13
    textbox.TextXAlignment = Enum.TextXAlignment.Left
    textbox.ClearTextOnFocus = false
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = textbox
    
    local padding = Instance.new("UIPadding")
    padding.PaddingLeft = UDim.new(0, 12)
    padding.Parent = textbox
    
    return box
end

-- CRIAR CONTEÚDO DAS ABAS

-- MAIN
local shopSection = createSection(MainContent, "Shop")
createTextBox(shopSection, "Select Items to Buy...")
createToggle(shopSection, "Auto Buy Item")

local farmSection = createSection(MainContent, "Farm")
createTextBox(farmSection, "Min money per sec to buy...")
createToggle(farmSection, "Auto buy Brainrot")
createToggle(farmSection, "Anti AFK")
createToggle(farmSection, "Auto Lock Base")
createToggle(farmSection, "Auto Collect")
createTextBox(farmSection, "Collect Delay (minutes)")

-- STEALER
local stealerSection = createSection(StealerContent, "Stealer")
createToggle(stealerSection, "Steal Upstairs — Y keybind")
createToggle(stealerSection, "Desync")
createToggle(stealerSection, "Auto destroy Turret")
createToggle(stealerSection, "Auto Steal Nearest Brainrot")
createToggle(stealerSection, "Secret/OG only (For auto steal nearest)")
createToggle(stealerSection, "Auto kick on steal")
createToggle(stealerSection, "Old Desync (Patched)")

-- HELPER
local utilitySection = createSection(HelperContent, "Utility")
createToggle(utilitySection, "Aimbot")
createToggle(utilitySection, "Fly to Highest value Brainrot (C keybind)")

local espSection = createSection(HelperContent, "ESP")
createToggle(espSection, "X Ray")
createToggle(espSection, "Highest Value Brainrot ESP")
createToggle(espSection, "Timer ESP")
createToggle(espSection, "Player ESP")

-- PLAYER
local playerSection1 = createSection(PlayerContent, "Player")
createToggle(playerSection1, "Anti Ragdoll")

local playerSection2 = createSection(PlayerContent, "")
createToggle(playerSection2, "Speed boost UI (3 rebirth required, Q keybind on PC)")

local playerSection3 = createSection(PlayerContent, "")
createToggle(playerSection3, "Infinity Jump")
createToggle(playerSection3, "Booster UI")

-- FINDER
local finderSection = createSection(FinderContent, "Finder & Auto Hop")
createToggle(finderSection, "Auto Load Script")
createToggle(finderSection, "Start server hop to find target")
createTextBox(finderSection, "Webhook URL")
createToggle(finderSection, "Find High Value Brainrot Server")
createTextBox(finderSection, "Min money per sec to find...")
createToggle(finderSection, "Find <2 min Guaranteed Mythic Server")

-- SERVER
local serverSection = createSection(ServerContent, "Server")
createToggle(serverSection, "Server Hop")
createToggle(serverSection, "Rejoin Server")
createToggle(serverSection, "Copy Server JobId")
createToggle(serverSection, "Low Ping Server Finder")

-- DISCORD
local discordSection = createSection(DiscordContent, "Discord / Notes")

local note1 = Instance.new("TextLabel")
note1.Parent = discordSection
note1.BackgroundTransparency = 1
note1.Size = UDim2.new(1, 0, 0, 25)
note1.Font = Enum.Font.Gotham
note1.Text = "Works best on low-ping servers (<120)"
note1.TextColor3 = Color3.fromRGB(150, 150, 150)
note1.TextSize = 13
note1.TextXAlignment = Enum.TextXAlignment.Left

local note2 = Instance.new("TextLabel")
note2.Parent = discordSection
note2.BackgroundTransparency = 1
note2.Size = UDim2.new(1, 0, 0, 25)
note2.Font = Enum.Font.Gotham
note2.Text = "Join my Discord to join secret servers 100% within 1 min"
note2.TextColor3 = Color3.fromRGB(150, 150, 150)
note2.TextSize = 13
note2.TextXAlignment = Enum.TextXAlignment.Left
note2.TextWrapped = true

local discordLinkBox = Instance.new("Frame")
discordLinkBox.Name = "DiscordLink"
discordLinkBox.Parent = discordSection
discordLinkBox.BackgroundTransparency = 1
discordLinkBox.Size = UDim2.new(1, 0, 0, 40)

local discordButton = Instance.new("TextButton")
discordButton.Name = "DiscordButton"
discordButton.Parent = discordLinkBox
discordButton.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
discordButton.BorderSizePixel = 0
discordButton.Size = UDim2.new(1, 0, 1, 0)
discordButton.Font = Enum.Font.Gotham
discordButton.Text = "https://discord.gg/qND6Z5Khj (Click to copy)"
discordButton.TextColor3 = Color3.fromRGB(100, 150, 255)
discordButton.TextSize = 12
discordButton.TextXAlignment = Enum.TextXAlignment.Left

local discordCorner = Instance.new("UICorner")
discordCorner.CornerRadius = UDim.new(0, 6)
discordCorner.Parent = discordButton

local discordPadding = Instance.new("UIPadding")
discordPadding.PaddingLeft = UDim.new(0, 12)
discordPadding.Parent = discordButton

discordButton.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/qND6Z5Khj")
    discordButton.Text = "Discord link copied!"
    wait(2)
    discordButton.Text = "https://discord.gg/qND6Z5Khj (Click to copy)"
end)

local note3 = Instance.new("TextLabel")
note3.Parent = discordSection
note3.BackgroundTransparency = 1
note3.Size = UDim2.new(1, 0, 0, 25)
note3.Font = Enum.Font.Gotham
note3.Text = "Secret giveaway happening now on my Discord"
note3.TextColor3 = Color3.fromRGB(150, 150, 150)
note3.TextSize = 13
note3.TextXAlignment = Enum.TextXAlignment.Left

local note4 = Instance.new("TextLabel")
note4.Parent = discordSection
note4.BackgroundTransparency = 1
note4.Size = UDim2.new(1, 0, 0, 25)
note4.Font = Enum.Font.Gotham
note4.Text = "Rejoin & Auto Load Script"
note4.TextColor3 = Color3.fromRGB(150, 150, 150)
note4.TextSize = 13
note4.TextXAlignment = Enum.TextXAlignment.Left

-- Sistema de Tabs
local contents = {
    [MainBtn] = MainContent,
    [StealerBtn] = StealerContent,
    [HelperBtn] = HelperContent,
    [PlayerBtn] = PlayerContent,
    [FinderBtn] = FinderContent,
    [ServerBtn] = ServerContent,
    [DiscordBtn] = DiscordContent
}

local tabs = {MainBtn, StealerBtn, HelperBtn, PlayerBtn, FinderBtn, ServerBtn, DiscordBtn}

local function switchTab(selectedTab)
    for _, tab in pairs(tabs) do
        tab.BackgroundColor3 = Color3.fromRGB(20, 20, 22)
        tab.TextColor3 = Color3.fromRGB(140, 140, 140)
    end
    
    for _, content in pairs(contents) do
        content.Visible = false
    end
    
    selectedTab.BackgroundColor3 = Color3.fromRGB(35, 35, 38)
    selectedTab.TextColor3 = Color3.fromRGB(255, 255, 255)
    contents[selectedTab].Visible = true
end

-- Conectar eventos
for _, tab in pairs(tabs) do
    tab.MouseButton1Click:Connect(function()
        switchTab(tab)
    end)
end

-- Abrir Main por padrão
switchTab(MainBtn)

-- Botão Abrir/Fechar
OpenButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

MinimizeBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
end)

CloseBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
end)

print("Real Hub carregado com sucesso!")
print("Clique no botão redondo para abrir o menu")Title.TextSize = 13
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
