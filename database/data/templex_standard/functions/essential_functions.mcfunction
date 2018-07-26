execute as @a[scores={SpawnPoint=1..}] run function templex_standard:spawnpoint
execute as @a[scores={Die=1..}] run function templex_standard:die
execute as @a[scores={Spawn=1..}] run function templex_standard:spawn
execute as @a[scores={Rules=1..}] run function templex_standard:rules
execute as @a[scores={Vote=1..}] run function templex_standard:vote
execute positioned 103 125 64 as @a[distance=..1.5,scores={RTPs=1..}] at @s run function templex_standard:rtp_try
execute as @a[scores={RTP=1..}] run function templex_standard:rtp_try
execute as @a[scores={BuyRTP=1..}] run function templex_standard:buy_rtp_try
execute as @a[scores={Tutorial=1..}] run function templex_standard:tutorial
execute as @a[scores={TPA=1..}] run function templex_standard:tpa
execute as @a[scores={TPA=..-1}] run function templex_standard:tpa
execute as @a[scores={TPAccept=1..}] run function templex_standard:tpaccept
execute as @a[scores={Discord=1..}] run function templex_standard:discord
execute as @a[scores={TPDeny=1..}] run function templex_standard:tpdeny
execute as @a[scores={Donate=1..}] run function templex_standard:donate
execute as @a[scores={ViewLevel=1..}] run function templex_standard:view_level
execute as @a[scores={ViewWalkTime=1..}] run function templex_standard:view_walk_time
execute as @a[scores={TriggerReset=1..}] run function templex_standard:trigger_reset
execute as @a[scores={TPEnd=1..}] run function templex_standard:tp_end_try
execute as @a[scores={Survival=1..},tag=!t.ingame] run function templex_standard:survival
execute as @a[scores={Survival=1..},tag=t.ingame] run tellraw @s [{"text":"Sorry, that is disabled right now. (You're in a protected area!)","color":"red"}]
execute as @a[scores={Survival=1..},tag=t.ingame] run scoreboard players reset @s Survival
execute as @a[scores={Survival=1..},tag=t.ingame] run scoreboard players enable @a Survival
execute as @a[scores={VoteDay=1..}] run function templex_standard:voteday
execute as @a[scores={VoteNight=1..}] run function templex_standard:votenight
execute as @a[scores={ToggleParticle=1..}] run function templex_standard:toggleparticle
execute as @a[scores={Home=1..}] run function templex_standard:newhome
execute as @a[scores={SetHome=1..}] run function templex_standard:sethome
execute as @a[scores={Secret=1..}] run function templex_standard:zelda
execute as @a[scores={Firework=1..}] run function templex_standard:firework
execute as @a[scores={Taunt=1..}] run function templex_standard:taunt
execute as @a[scores={ViewKarma=1..}] run function templex_standard:view_karma
execute as @a[scores={ViewTC=1..}] run function templex_standard:view_tc
