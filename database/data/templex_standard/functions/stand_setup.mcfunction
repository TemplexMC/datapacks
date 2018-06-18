# Initial.
tellraw @a [{"text":"\u00A76Templex Stand Setup \u00A78: \u00A79Starting up setup for Templex Stands [v0.0.1]","color":"blue"}]
# Stands.
tellraw @a [{"text":"\u00A76Templex Stand Setup \u00A78: \u00A79Setting up stands...","color":"blue"}]
kill @e[tag=tplx.stand]
summon armor_stand 0 220 0 {CustomName:"{\"text\":\"Freezer\",\"color\":\"aqua\"}",Tags:["tplx.stand"],Invulnerable:1b,NoGravity:1b,Invisible:1b}
#summon armor_stand 1 220 0 {CustomName:"{\"text\":\"Freezer\",\"color\":\"aqua\"}",Tags:["tplx.stand"],Invulnerable:1b,NoGravity:1b,Invisible:1b}

#summon armor_stand 0 220 1 {CustomName:"{\"text\":\"t.onlineusers\",\"color\":\"aqua\"}",Tags:["tplx.stand"],Invulnerable:1b,NoGravity:1b,Invisible:1b}
#summon armor_stand 2 220 0 {CustomName:"{\"text\":\"t.\",\"color\":\"aqua\"}",Tags:["tplx.stand"],Invulnerable:1b,NoGravity:1b,Invisible:1b}
# Done.
tellraw @a [{"text":"\u00A76Templex Stand Setup \u00A78: \u00A79Setup finished.","color":"blue"}]
