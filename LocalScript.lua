local ContextActionService = game:GetService("ContextActionService")

--local rgb = game.Workspace.color1
--local chat = game:GetService("Chat")
--local bot = game.Workspace.Bot1


local array0 ={}
local array1 ={}
local array2 ={}
n = 1
m = 1
s=""
pixel = 0
local y =105
local x = 0


local function handleAction(actionName, inputState, inputObject)
	
	if inputState == Enum.UserInputState.Begin then 
		if actionName == "zero" then
			--print()
			--chat:Chat(bot,"Нажал 0")
			table.insert(array0, 0)
			n+=1
		
		elseif actionName == "one" then
			--print()
			--chat:Chat(bot,"Нажал 1")
			table.insert(array0,1)
			n+=1

		elseif actionName == "two" then
			--print()
			--chat:Chat(bot,"Нажал 2")
			table.insert(array0, 2)
			n+=1

		elseif actionName == "three" then
			--print()
			--chat:Chat(bot,"Нажал 3")
			table.insert(array0, 3)
			n+=1

		elseif actionName == "four" then
			--print()
			--chat:Chat(bot,"Нажал 4")
			table.insert(array0, 4)
			n+=1

		elseif actionName == "five" then
			--print()
			--chat:Chat(bot,"Нажал 5")
			table.insert(array0, 5)
			n+=1
			
		elseif actionName == "six" then
			--print()
			--chat:Chat(bot,"Нажал 6")
			table.insert(array0, 6)
			n+=1
			
		elseif actionName == "seven" then
			--print()
			--chat:Chat(bot,"Нажал 7")
			table.insert(array0, 7)
			n+=1
			
		elseif actionName == "eight" then
			--print()
			--chat:Chat(bot,"Нажал 8")
			table.insert(array0, 8)
			n+=1
		elseif actionName == "nine" then
			--print()
			--chat:Chat(bot,"Нажал 9")
			table.insert(array0, 9)
			n+=1
		elseif actionName == "space" then
			--print()
			--chat:Chat(bot,"Нажал space")
			for i in ipairs(array0) do
				s=s..tostring(array0[i])
				pixel =tonumber(s)
				local block =Instance.new("Part", workspace)
				block.Size = Vector3.new(1,1,1)
				block.Color = Color3.new(pixel/255,pixel/255,pixel/255)
				block.Position = Vector3.new(x, y, 0)
				block.Anchored=true
				x+=1
			end
			s=""
			--print(pixel)
			
			table.insert(array1,pixel)
			table.clear(array0)
			
		elseif actionName == "enter" then
			--print()
			y-=1
			x=0 
			--chat:Chat(bot,"Нажал enter")
			for i in ipairs(array0) do
				s=s..tostring(array0[i])
				pixel =tonumber(s)
			end
			s=""
			--print(pixel)
			table.insert(array1,pixel)
			table.clear(array0)
			
			table.insert(array2,array1)
			
			
			table.clear(array1)
			
			
		elseif actionName == "w" then
			
			--chat:Chat(bot,"Нажал w")
			--print("кол-во строк = ".. tostring(table.getn(array2)))			
			local y = table.getn(array2)
			print("кол-во строк = ".. tostring(y))	
			
			
			--table.clear(array2)
		end
		
	end

end

ContextActionService:BindAction("zero", handleAction, true, Enum.KeyCode.KeypadZero)
ContextActionService:BindAction("one", handleAction, true, Enum.KeyCode.KeypadOne)
ContextActionService:BindAction("two", handleAction, true, Enum.KeyCode.KeypadTwo)
ContextActionService:BindAction("three", handleAction, true, Enum.KeyCode.KeypadThree)
ContextActionService:BindAction("four", handleAction, true, Enum.KeyCode.KeypadFour)
ContextActionService:BindAction("five", handleAction, true, Enum.KeyCode.KeypadFive)
ContextActionService:BindAction("six", handleAction, true, Enum.KeyCode.KeypadSix)
ContextActionService:BindAction("seven", handleAction, true, Enum.KeyCode.KeypadSeven)
ContextActionService:BindAction("eight", handleAction, true, Enum.KeyCode.KeypadEight)
ContextActionService:BindAction("nine", handleAction, true, Enum.KeyCode.KeypadNine)
ContextActionService:BindAction("space", handleAction, true, Enum.KeyCode.Space)
ContextActionService:BindAction("enter", handleAction, true, Enum.KeyCode.Return)
ContextActionService:BindAction("w", handleAction, true, Enum.KeyCode.W)

