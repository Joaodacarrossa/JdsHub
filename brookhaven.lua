local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local player = game.Players.LocalPlayer

local Window = Rayfield:CreateWindow({
   Name = "Jds Hub | Brookhaven",
   Icon = 0,
   LoadingTitle = "Loading Jds Hub...",
   LoadingSubtitle = "by Joaodacarrossa",
   Theme = "Amethyst",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = true,
   KeySettings = {
      Title = "Jds Hub",
      Subtitle = "Key System",
      Note = "Talk for Owner to get the Key",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Jds2015"}
   }
})

local PlayerTab = Window:CreateTab("Player", nil)

local SliderSpeed = PlayerTab:CreateSlider({
   Name = "Walkspeed",
   Range = {16, 100},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Speed",
   Callback = function(Value)
      player.Character:WaitForChild("Humanoid").WalkSpeed = Value
   end,
})

PlayerTab:CreateButton({
   Name = "Reset speed",
   Callback = function()
      SliderSpeed:Set(16)
   end,
})

local SliderJump = PlayerTab:CreateSlider({
   Name = "Jump heigh",
   Range = {50, 200},
   Increment = 2,
   Suffix = "Heigh",
   CurrentValue = 50,
   Flag = "Jump",
   Callback = function(Value)
      player.Character:WaitForChild("Humanoid").JumpPower = Value
   end,
})

PlayerTab:CreateButton({
   Name = "Reset jump",
   Callback = function()
      SliderJump:Set(50)
   end,
})

local CreditsTab = Window:CreateTab("Credits", nil)

CreditsTab:CreateParagraph({
   Title = "Credits",
   Content = "Joaodacarrossa: Programmator\nOpen-Source: Sirius"
})
