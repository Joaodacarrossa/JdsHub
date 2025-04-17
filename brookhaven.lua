local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local player = game.Players.LocalPlayer

local Window = Rayfield:CreateWindow({
   Name = "Jds Hub | Brookhaven",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading Jds Hub...",
   LoadingSubtitle = "by Joaodacarrossa",
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Jds Hub",
      Subtitle = "Key System",
      Note = "Talk for Owner to get the Key", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Jds2015"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local PlayerTab = Window:CreateTab("Player", nil)

local SliderSpeed = PlayerTab:CreateSlider({
  Name = "Walkspeed",
   Range = {16, 100},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Speed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
     player.Character:WaitForChild("Humanoid").WalkSpeed = Value
   end,
})

local ButtonSpeed = PlayerTab:CreateButton({
  Name = "Reset speed",
  Callback = SliderSpeed:Set(16),
})

local SliderJump = PlayerTab:CreateSlider({
  Name = "Jump heigh",
  Range = {50, 200},
  Increment = 2,
  Suffix = "Heigh"
  CurrentValue = 50,
  Flag = "Jump"
  Callback = function(Value)
    player.Character:WaitForChild("Humanoid").JumpPower = Value
  end,
})

local ButtonJump = PlayerTab:CreateButton({
      Name = "Reset jump",
      Callback = SliderJump:Set(50),
})

local CreditsTab = Window:CreateTab("Credits", nil)

local Paragraph = CreditsTab:CreateParagraph({
  Title = "Credits",
  Content = "Joaodacarrossa: Programmator\nOpen-Source: Sirius"
})
