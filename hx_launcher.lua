local KEY = 'lKI3kUDXF8'
_G.LauncherVersion = 'v1.23.4'
local PlayerGui = Instance.new("ScreenGui")
local main = Instance.new("ImageLabel")
local scroll = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local enterkey = Instance.new("TextBox")
local execscript = Instance.new("TextButton")
local preview = Instance.new("ImageLabel")
local loadingpreviewlbl = Instance.new("TextLabel")
local getkey = Instance.new("TextButton")
local info = Instance.new("TextLabel")
local closegui = Instance.new("TextButton")

--Properties:

    PlayerGui.Name = "PlayerList1"
PlayerGui.Parent = game.CoreGui
local PlayerList = PlayerGui

main.Name = "0 10 101 0101010 101 01 010 10"
main.Parent = PlayerGui
main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.182941899, 0, 0.152700186, 0)
main.Size = UDim2.new(0, 352, 0, 212)
main.Active = true
main.Draggable = true

scroll.Name = "01010 10 101 0 00 10 0 010 101"
scroll.Parent = main
scroll.Active = true
scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scroll.BackgroundTransparency = 1.000
scroll.BorderSizePixel = 0
scroll.Position = UDim2.new(0.637000024, 0, 0, 0)
scroll.Size = UDim2.new(0, 127, 0, 199)

UIListLayout.Parent = scroll
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

enterkey.Name = "0101 010 10 101 01 001 01000 "
enterkey.Parent = main
enterkey.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
enterkey.BorderSizePixel = 0
enterkey.Position = UDim2.new(0.0163255632, 0, 0.49783951, 0)
enterkey.Size = UDim2.new(0, 204, 0, 17)
enterkey.Font = Enum.Font.SourceSans
enterkey.PlaceholderText = "Enter Key"
enterkey.Text = ""
enterkey.TextColor3 = Color3.fromRGB(255, 255, 255)
enterkey.TextSize = 14.000

execscript.Name = "010101 00001 010 101 010101 00"
execscript.Parent = main
execscript.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
execscript.BorderSizePixel = 0
execscript.Position = UDim2.new(0.0163255613, 0, 0.614308298, 0)
execscript.Size = UDim2.new(0, 204, 0, 17)
execscript.Font = Enum.Font.SourceSans
execscript.Text = "Launch {Need Key}"
execscript.TextColor3 = Color3.fromRGB(255, 255, 255)
execscript.TextSize = 14.000

preview.Name = "010 10 10010 01 10 101 001 01 01"
preview.Parent = main
preview.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
preview.BackgroundTransparency = 0.999
preview.Position = UDim2.new(0.0293495003, 0, 0.0395610072, 0)
preview.Size = UDim2.new(0, 195, 0, 87)
preview.ZIndex = 3


loadingpreviewlbl.Name = "0101 01 01 010 10 1010 101 010"
loadingpreviewlbl.Parent = preview
loadingpreviewlbl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loadingpreviewlbl.BackgroundTransparency = 1.000
loadingpreviewlbl.Position = UDim2.new(0.251282066, 0, 0.356321871, 0)
loadingpreviewlbl.Size = UDim2.new(0, 96, 0, 24)
loadingpreviewlbl.Font = Enum.Font.SourceSans
loadingpreviewlbl.Text = "Loading Preview.."
loadingpreviewlbl.TextColor3 = Color3.fromRGB(255, 255, 255)
loadingpreviewlbl.TextSize = 14.000

getkey.Name = "01 0101 10 10101001 01 010 101 10"
getkey.Parent = main
getkey.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
getkey.BorderSizePixel = 0
getkey.Position = UDim2.new(0.0134846652, 0, 0.72907269, 0)
getkey.Size = UDim2.new(0, 204, 0, 17)
getkey.Font = Enum.Font.SourceSans
getkey.Text = "GetKey"
getkey.TextColor3 = Color3.fromRGB(255, 255, 255)
getkey.TextSize = 14.000

info.Name = "01 10 101 010 101 01 01010101 101 01 0"
info.Parent = main
info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
info.BackgroundTransparency = 1.000
info.Position = UDim2.new(0, 0, 0.938679218, 0)
info.Size = UDim2.new(0, 352, 0, 13)
info.Font = Enum.Font.SourceSans
info.Text = "Hawk Series Launcher ~ discord.gg/MEhEqGbZW9                                                            ".._G.LauncherVersion
info.TextColor3 = Color3.fromRGB(255, 255, 255)
info.TextSize = 11.000
info.TextXAlignment = Enum.TextXAlignment.Left

closegui.Name = "0101 01 01 10 101 01 01 01 01 01 01 01 "
closegui.Parent = main
closegui.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
closegui.BorderSizePixel = 0
closegui.Position = UDim2.new(0.0163255613, 0, 0.836006463, 0)
closegui.Size = UDim2.new(0, 204, 0, 17)
closegui.Font = Enum.Font.SourceSans
closegui.Text = "Close"
closegui.TextColor3 = Color3.fromRGB(255, 255, 255)
closegui.TextSize = 14.000


key = enterkey.Text
local class
local function newscript(NAME, PREVIEW, CLASS)
	local script01 = Instance.new("TextButton")

	script01.Name = "010 11 010 10 101 01 01 0 101 01 01 01 0 101 01 01"
	script01.Parent = scroll
	script01.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
	script01.BackgroundTransparency = 1.000
	script01.BorderSizePixel = 0
	script01.Position = UDim2.new(0, 0, -7.70645912e-08, 0)
	script01.Size = UDim2.new(0, 122, 0, 18)
	script01.Font = Enum.Font.SourceSans
	script01.Text = NAME
	script01.TextColor3 = Color3.fromRGB(255, 255, 255)
	script01.TextSize = 14.000
	script01.TextXAlignment = Enum.TextXAlignment.Left

	script01.MouseEnter:Connect(function()
		script01.BackgroundTransparency = 0.6
	end)
	script01.MouseLeave:Connect(function()
		script01.BackgroundTransparency = 1
	end)
	script01.MouseButton1Click:Connect(function()
		preview.Image = PREVIEW
		class = CLASS
	end)
end

local executor = identifyexecutor()

local isynx =   "rbxassetid://9954822847"
local iarce     = "rbxassetid://10036386034"
local ikrnl     = "rbxassetid://9954548950"
local isirh     = "rbxassetid://9954548230"
local ielec     = "rbxassetid://10036387898"
local ikrnl2    = "rbxassetid://9954800281"
local iblue     = "rbxassetid://9954823686"
local ihz       = "rbxassetid://9954799768"
local inoob     = "rbxassetid://9954813711"
local iproto    = ""

newscript('Synapse X', 	 isynx, 	'Synapse')
newscript('Arceus X',		 	iarce, 	'Arceus')
newscript('Electron', 			'rbxassetid://9954557245', 	'Electron')
newscript('SirHurt', 		 isirh, 	'SirHurt')
newscript('(CS) KRNL New UI', 	ikrnl2, 	'KRNLNEW')
newscript('KRNL', 				ikrnl,	'KRNL')
newscript('Blue Synapse X', 	iblue, 	'BLUESYNX')
newscript('(CS) PROTOSMASHER',	iproto, 	'PROTO')
newscript('(CS)NoobHax',			inoob, 	'Noob')
newscript('(CS)Haunter Z',			ihz, 	'Haunter')




execscript.MouseButton1Click:Connect(function()
	if enterkey.Text == KEY then
		if class == 'Synapse' then
			if executor == 'Arceus' then
				loadstring(game:HttpGet('https://raw.githubusercontent.com/aA910FLsaIASFO1/synapsex/main/arceusx.lua'))()
			else
				loadstring(game:HttpGet('https://raw.githubusercontent.com/aA910FLsaIASFO1/synapsex/main/worked.lua'))()
			end	
		elseif class == 'Arceus' then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/aA910FLsaIASFO1/arceusx/main/arceusxpc.lua'))()

		elseif class == 'Electron' then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/aA910FLsaIASFO1/electron/main/main.lua'))()

		elseif class == 'SirHurt' then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/aA910FLsaIASFO1/sirhurt/main/D8A09SDZ8MASHASG7GAGHASDJAS0DMASZA0SMDZASFGAG7.lua'))()

		elseif class == 'KRNLNEW' then
			loadstring(game:HttpGet(''))()

		elseif class == 'KRNL' then
			if executor == 'Arceus' then
				loadstring(game:HttpGet('https://raw.githubusercontent.com/aA910FLsaIASFO1/krnl/main/arceusx.lua'))()
			else
				loadstring(game:HttpGet('https://raw.githubusercontent.com/aA910FLsaIASFO1/krnl/main/A0SDASD09A40FI4F084F8A0F8F0RR02MRDM28S0R2M8RS2034720S382347S230S48N2N34FMF0NCNMD48204D8M2304D82M402384GN2F48M0A284NS2402D804FN2F402840F82304F820384F2084F0230M842M428MF208M.lua'))()
			end

		elseif class == 'BLUESYNX' then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/aA910FLsaIASFO1/bluered/main/bluesynx.lua'))()

		elseif class == 'PROTO' then
			loadstring(game:HttpGet(''))()

		elseif class == 'Noob' then
			loadstring(game:HttpGet(''))()

		elseif class == 'Haunter' then
			loadstring(game:HttpGet(''))()
		end
	elseif not enterkey.Text == KEY then
        warn('Hawk Series: Invalid Key!')
	end
end)


getkey.MouseButton1Click:Connect(function()
	setclipboard('https://link-center.net/373269/synapse-x-key')
end)

closegui.MouseButton1Click:Connect(function()
	PlayerList:Destroy()
end)

local function fuck(button, color1, color2)
	button.MouseEnter:Connect(function()
		button.BackgroundColor3 = color2
		button.BackgroundTransparency = 0.6
	end)
	button.MouseLeave:Connect(function()
		button.BackgroundColor3 = color1
		button.BackgroundTransparency = 0
	end)
	
end

local black = Color3.fromRGB(0,0,0)
local bluered = Color3.fromRGB(17, 0, 255)

fuck(closegui, black, bluered)
fuck(getkey, black, bluered)
fuck(execscript, black, bluered)
