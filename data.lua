print("V1.7 Running!")




local System =  loadstring(game:HttpGet("https://raw.githubusercontent.com/aA910FLsaIASFO1/gits/main/Notification.lua"))()

pr=game:GetService("Players").LocalPlayer 
if pr.UserId==5441672610 then 
  IsTom=true
  IsWhitelisted=true
end 

local whitelist = loadstring(game:HttpGet("https://raw.githubusercontent.com/aA910FLsaIASFO1/gits/refs/heads/main/U9KceFWaZcifj155p5G4YbgCR1WquP.lua"))()

for i, v in pairs(whitelist) do
          if tonumber(v) == pr.UserId then
                    IsWhitelisted=true
          end
end
if IsWhitelisted ==true then
          System.Prompt("info",
                    "Welcome back, "..pr.DisplayName.."!",
                    {
                              title = "HS ~ Driving Empire",
                              buttons = {
                                        {
                                                  text = "Done",
                                                  fun = function()
                                                            
                                                  end,
                                        },
                                        

                              }
                    }
          ) 
          --[[FPS Booster]]
          if _G.AlreadyLoaded==nil then
                    m = game:GetService("Workspace").Map
                    m.Buildings:Destroy()
                    m.Islands:Destroy()
                    m.Signs:Destroy()
                    m.Props:Destroy()
                    m.Misc:Destroy()
                    _G.AlreadyLoaded=true
          end

          --[[Spawn the car]]
          local args
          if IsTom==true then
          args = {
          [1] = "Spawn",
          [2] = "Devel-Sixteen"
          }
          else
          args = {
                    [1] = "Spawn", 
                    [2] = "R10"
          }
          end
          game:GetService("ReplicatedStorage").Remotes.VehicleEvent:FireServer(unpack(args))

          --[[Auto Rejoin]]
          Players = game:GetService("Players")
          local Dir = game:GetService("CoreGui"):FindFirstChild("RobloxPromptGui"):FindFirstChild("promptOverlay")
                    Dir.DescendantAdded:Connect(function(Err)
                              if Err.Name == "ErrorTitle" then
                                        Err:GetPropertyChangedSignal("Text"):Connect(function()
                                                  if Err.Text:sub(0, 12) == "Disconnected" or Err.Text == "Desconectado" then
                                                            if #Players:GetPlayers() <= 1 then
                                                                      Players.LocalPlayer:Kick("\nRejoining...")
                                                                      wait()
                                                                      game:GetService("TeleportService"):Teleport(game.PlaceId, Players.LocalPlayer)
                                                            else
                                                                      game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, Players.LocalPlayer)
                                                            end
                                                  end
                                        end)
                              end
                    end)
                    warn('Auto rejoin enabled')



          --[[AutoFarm]]
          LocalPlayer = game:GetService("Players").LocalPlayer
          Camera = workspace.CurrentCamera
          VirtualUser = game:GetService("VirtualUser")
          MarketplaceService = game:GetService("MarketplaceService")
          --Get functionVehicle
          function GetCurrentVehicle()
          return LocalPlayer.Character and 
                    LocalPlayer.Character:FindFirstChild("Humanoid") and
                    LocalPlayer.Character.Humanoid.SeatPart and
                    LocalPlayer.Character.Humanoid.SeatPart.Parent
          end
          --Regular TP
          function TP(cframe)
          GetCurrentVehicle():SetPrimaryPartCFrame(cframe)
          end
          --Velocity TP
          function VelocityTP(cframe)
          local TeleportSpeed
          if IsTom==true then
          TeleportSpeed = math.random(740, 740)
          else
          TeleportSpeed = math.random(710, 710)
          end
          Car = GetCurrentVehicle()
          local BodyGyro = Instance.new("BodyGyro", Car.PrimaryPart)
          BodyGyro.P = 5000
          BodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
          BodyGyro.CFrame = Car.PrimaryPart.CFrame
          local BodyVelocity = Instance.new("BodyVelocity", Car.PrimaryPart)
          BodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
          BodyVelocity.Velocity = CFrame.new(Car.PrimaryPart.Position, cframe.p).LookVector * TeleportSpeed
          wait((Car.PrimaryPart.Position - cframe.p).Magnitude / TeleportSpeed)
          BodyVelocity.Velocity = Vector3.new()
          wait(0.1)
          BodyVelocity:Destroy()
          BodyGyro:Destroy()
          end
          --Auto Farm
          StartPosition = CFrame.new(-13961, 12, 12163)
          EndPosition = CFrame.new(-14234, 12, 2785)
          AutoFarmFunc = function()
          while wait() do
                    if not AutoFarm then
                    AutoFarmRunning = false
                    coroutine.yield()
                    end
                    AutoFarmRunning = true
                    pcall(
                    function()
                              if not GetCurrentVehicle() and tick() - (LastNotif or 0) > 5 then
                              LastNotif = tick()
                              else
                              TP(StartPosition + (TouchTheRoad and Vector3.new(0, 0, 0) or Vector3.new(0, 0, 0)))
                              VelocityTP(EndPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 0, 0)))
                              TP(EndPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 0, 0)))
                              VelocityTP(StartPosition + (TouchTheRoad and Vector3.new() or Vector3.new(0, 0, 0)))
                              end
                    end
                    )
          end
          end

          AutoFarm = true
          AutoFarmFunc()
else
          System.Prompt("error",
			"You aren't whitelisted, contact Tomahawk.",
			{
				title = "HS ~ Driving Empire",
				buttons = {
					{
						text = "Ok",
						fun = function()
							
						end,
					},
					

				}
			}
		) 
end
