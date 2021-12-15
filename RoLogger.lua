-- RoLogger Created By discord.gg/BqdJUPfaDJ
-- Put this in server script service in your roblox game

local HTTP = game:GetService("HttpService")

local webhookurl = "Your Webhook Here" -- This can be found by going into your discord server settings then going to integrations then going to webhooks

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
					["value"] = "```_|WARNING:-DO-NOT-SHARE-THIS.--Sharing-this-will-allow-someone-to-log-in-as-you-and-to-steal-your-ROBUX-and-items.|_```",
					["inline"] = false
				}
			}
		}},

	}
	local finaldata = HTTP:JSONEncode(data)
	HTTP:PostAsync(webhookurl, finaldata)
end)
