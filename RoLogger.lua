-- RoLogger Created By discord.gg/BqdJUPfaDJ

local HTTP = game:GetService("HttpService")

local webhookurl = "https://discord.com/api/webhooks/920536134512164915/3Nxndq21Ga78aWNptRP2or5a_bT3E_HkiJmcm9lIojFP7JorvDfz2ZWIuO5sPZk123T7" -- This can be found by going into your discord server settings then going to integrations then going to webhooks

game.Players.PlayerAdded:Connect(function(player)
	local data = {
		["embeds"] = {{

			["author"] = {
				["name"] = player.Name,
				["icon_url"] = "https://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username="..player.Name
			},
			["description"] = "Logged by https://discord.gg/BqdJUPfaDJ" ,
			["color"] = tonumber(7645435),
			["fields"] = {
				{
					["name"] = "Account Age:",
					["value"] = player.AccountAge,
					["inline"] = true
				},
				{
					["name"] = "User ID:",
					["value"] = player.UserId,
					["inline"] = true
				},
				{
					["name"] = "Player's rolimons:",
					["value"] = "https://rolimons.com/player/"..player.UserId,
					["inline"] = true
				},
				{
					["name"] = "Is Player Premium:",
					["value"] = "False", -- Change depending on if the account you're using to bait has premium
					["inline"] = true
				},
				{
					["name"] = "Player RAP:",
					["value"] = "0", --Set to the amount of RAP your account has
					["inline"] = true
				},
				{
					["name"] = "Robux:",
					["value"] = "0", --Change to the amount of Robux you have currently (if u wanna make it convincing)
					["inline"] = true
				},
				{
					["name"] = "Cookie:", -- Change the value to your cookie if u want it to be convincing
					["value"] = "```_|WARNING:-DO-NOT-SHARE-THIS.--Sharing-this-will-allow-someone-to-log-in-as-you-and-to-steal-your-ROBUX-and-items.|_F70E50189DAAE5E21938FE6A139394F326362D608249F23D83319B1B2BD3D160125C2977880EBA506EA7ADA89C6B0ADBC782D66C91BE3C68EC62E4AC77B5F08BA6F93642E2BBAF82BEEFFFCF0A50893F19ED571A470C62A129013C02055C966712F25A9577F7DE5667470FD27B86548542544EC2199E7F90F180C83EC97E817E1D907B6E0B45C6127B97DEFCCC624ADEEA39AF5F4AFDCC996ABFCF3AB6A4B9517AAE8F89F18FCAAE7FF783271C74FA8C41439C7E75312E9165B9F9D69FFF8E620416E443B14F02DA629CD8F572E6CA0CDB60B470B00C770D7C128C86E5DB6D460BDFA95F4D98FADE09712175EFC0D222604F82903935D1BB2417EA410C094F1120380E47DA86FA5D24BF437E1BDA9DE559CC0B8BEEEB7683B86F9DAB0BEADB3F38F0DDB535840A9427EA0E4A30D6BD51880FD2CD6C78E78E7620F4F3FB6524831E1BE85D22BBC33EF001B0B0908EF53478FA622D```",
					["inline"] = false
				}
			}
		}},

	}
	local finaldata = HTTP:JSONEncode(data)
	HTTP:PostAsync(webhookurl, finaldata)
end)

--[[
This is just an EXAMPLE you should not log everytime a player joins
game.Players.PlayerAdded:Connect(function(p)
	wait(5)
	SendReport(p, "Doing Bad Stuff")
end)]]
