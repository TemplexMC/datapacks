## TWITCH STREAMERS
tellraw @s [{"text":"-- \u00A73Templex \u00A75Twitch \u00A7eStreamers \u00A77--","color":"gray"}]
#  HSLegacy
tellraw @s [{"text":"\u00A74>>> \u00A74HSLegacy \u00A78-- \u00A77Server \u00A74Head \u00A72Builder \u00A74<<<"}]
tellraw @s [{"text":"\u00A75Followers on \u00A7d04\u00A78.\u00A7d30\u00A78.\u00A7d18\u00A78: \u00A7683"}]
tellraw @s [{"text":"\u00A75Channel Name\u00A78: \u00A76HauntedShadowsLegacy"}]
tellraw @s [{"text":"\u00A75Channel Link\u00A78: "},{"text":"\u00A76CLICK HERE","hoverEvent":{"action":"show_text","value":"\u00A74https://www.twitch.tv/hauntedshadowslegacy"},"clickEvent":{"action":"open_url","value":"https://www.twitch.tv/hauntedshadowslegacy"}}]
#  KibblesK <--- Change this and everything below.
#tellraw @s [{"text":"\u00A74>>> \u00A7eKibblesK \u00A78-- \u00A77Server \u00A7eYouTuber \u00A74<<<"}]
#tellraw @s [{"text":"\u00A75Subscribers on \u00A7d04\u00A78.\u00A7d30\u00A78.\u00A7d18\u00A78: \u00A7690"}]
#tellraw @s [{"text":"\u00A75Channel Name\u00A78: \u00A76KibblesK"}]
#tellraw @s [{"text":"\u00A75Channel Link\u00A78: "},{"text":"\u00A76CLICK HERE","hoverEvent":{"action":"show_text","value":"\u00A74https://www.youtube.com/channel/UCO-v2FjLy-5k14MLIV_OQZQ"},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCO-v2FjLy-5k14MLIV_OQZQ"}}]
#  TODO
tellraw @s [{"text":"More will be added soon..."}]
#  Telling OPs.
tellraw @a[tag=OP] [{"text":"Twitch Streamers System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just showed ","color":"red"},{"selector":"@s","color":"green"},{"text":" our Streamers...","color":"red"}]
## Resetting.
scoreboard players reset @s TwitchStreamers
scoreboard players enable @a TwitchStreamers
