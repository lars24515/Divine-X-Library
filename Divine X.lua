local library = {}

function library:CreateWindow(name)
	local ScreenGui = Instance.new("ScreenGui")
	local UI = Instance.new("Frame")
	local Headline = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local TextButton = Instance.new("TextButton")
	local Seperator = Instance.new("Frame")
	local Menu = Instance.new("Frame")
	local menu = Instance.new("ImageButton")
	local UICorner = Instance.new("UICorner")
	local ButtonHolder = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Pattern = Instance.new("ImageLabel")
	local PageHolder = Instance.new("Frame")
	local Pages = Instance.new("Folder")

	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.Parent = game:GetService("CoreGui")

	UI.BackgroundColor3 = Color3.fromRGB(26.000000350177288, 26.000000350177288, 28.000000230968)
	UI.BorderSizePixel = 0
	UI.Position = UDim2.new(0.0794326216, 0, 0.13501811, 0)
	UI.Size = UDim2.new(0, 550, 0, 730)
	UI.Name = "UI"
	UI.Parent = ScreenGui

	Headline.BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 37.00000159442425)
	Headline.BorderColor3 = Color3.fromRGB(27.000000290572643, 42.000001296401024, 53.00000064074993)
	Headline.BorderSizePixel = 0
	Headline.Size = UDim2.new(0, 550, 0, 40)
	Headline.ZIndex = 2
	Headline.Name = "Headline"
	Headline.Parent = UI

	Title.Font = Enum.Font.RobotoMono
	Title.Text = "Divine X [BETA]"
	Title.TextColor3 = Color3.fromRGB(142.00000673532486, 5.000000176951289, 194.00000363588333)
	Title.TextSize = 23
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1
	Title.Size = UDim2.new(0, 165, 0, 40)
	Title.Name = "Title"
	Title.Parent = Headline

	TextButton.Text = "-"
	TextButton.TextColor3 = Color3.fromRGB(142.00000673532486, 5.000000176951289, 194.00000363588333)
	TextButton.TextSize = 26
	TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.BackgroundTransparency = 1
	TextButton.Position = UDim2.new(0.914545476, 0, 0, 0)
	TextButton.Size = UDim2.new(0, 47, 0, 40)
	TextButton.Parent = Headline

	Seperator.BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 37.00000159442425)
	Seperator.BorderColor3 = Color3.fromRGB(27.000000290572643, 42.000001296401024, 53.00000064074993)
	Seperator.BorderSizePixel = 0
	Seperator.Position = UDim2.new(0.038181819, 0, 0.134246573, 0)
	Seperator.Size = UDim2.new(0, 514, 0, 5)
	Seperator.ZIndex = 2
	Seperator.Name = "Seperator"
	Seperator.Parent = UI

	Menu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Menu.BackgroundTransparency = 1
	Menu.Position = UDim2.new(0.038181819, 0, 0.0657534227, 0)
	Menu.Size = UDim2.new(0, 514, 0, 37)
	Menu.ZIndex = 2
	Menu.Name = "Menu"
	Menu.Parent = UI

	menu.Image = "rbxassetid://3926305904"
	menu.ImageColor3 = Color3.fromRGB(112.000000923872, 11.000000294297934, 151.00000619888306)
	menu.ImageRectOffset = Vector2.new(604, 684)
	menu.ImageRectSize = Vector2.new(36, 36)
	menu.ScaleType = Enum.ScaleType.Tile
	menu.BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 37.00000159442425)
	menu.BorderSizePixel = 0
	menu.Size = UDim2.new(0, 37, 0, 37)
	menu.ZIndex = 2
	menu.Name = "menu"
	menu.Parent = Menu

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = menu

	ButtonHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ButtonHolder.BackgroundTransparency = 1
	ButtonHolder.Position = UDim2.new(0.038181819, 0, 0.16438356, 0)
	ButtonHolder.Size = UDim2.new(0, 514, 0, 587)
	ButtonHolder.ZIndex = 2
	ButtonHolder.Name = "ButtonHolder"
	ButtonHolder.Parent = UI

	UIListLayout.Padding = UDim.new(0, 5)
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Parent = ButtonHolder

	Pattern.Image = "rbxassetid://2151741365"
	Pattern.ImageTransparency = 0.6000000238418579
	Pattern.ScaleType = Enum.ScaleType.Tile
	Pattern.SliceCenter = Rect.new(0, 256, 0, 256)
	Pattern.TileSize = UDim2.new(0, 250, 0, 250)
	Pattern.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Pattern.BackgroundTransparency = 1
	Pattern.Size = UDim2.new(0, 550, 0, 730)
	Pattern.Name = "Pattern"
	Pattern.Parent = UI

	PageHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PageHolder.BackgroundTransparency = 1
	PageHolder.Position = UDim2.new(0.150909096, 0, 0.0657534227, 0)
	PageHolder.Size = UDim2.new(0, 452, 0, 37)
	PageHolder.ZIndex = 2
	PageHolder.Name = "Tabs"
	PageHolder.Parent = UI
	
	Pages.Parent = UI
	Pages.Name = "Pages"
	
	local tabs = {}
	function tabs:CreateTab(name)
		local Page = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")

		Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Page.BackgroundTransparency = 1
		Page.Position = UDim2.new(0.038181819, 0, 0.16438356, 0)
		Page.Size = UDim2.new(1, 0, 1, 0)
		Page.ZIndex = 2
		Page.Name = name .. "_Page"
		Page.Parent = PageHolder

		UIListLayout.Padding = UDim.new(0, 5)
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Parent = Page
		
		local objects = {}
		function objects:CreateButton(name, text, callback)
			local Button = Instance.new("TextButton")
			local UICorner = Instance.new("UICorner")
			local ButtonStatus = Instance.new("TextLabel")
			
			local name = name or "name"
			local text = text or "text"
			
			Button.Font = Enum.Font.RobotoMono
			Button.Text = text
			Button.TextColor3 = Color3.fromRGB(142.00000673532486, 5.000000176951289, 194.00000363588333)
			Button.TextSize = 20
			Button.BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 37.00000159442425)
			Button.BorderSizePixel = 0
			Button.Size = UDim2.new(0, 514, 0, 41)
			Button.ZIndex = 2
			Button.Name = name
			Button.Parent = Page
			Button.MouseButton1Click:Connect(callback)

			UICorner.Parent = Button
		end
	end
	return tabs
end
return library