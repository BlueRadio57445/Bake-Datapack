tag @s add boss.casting
tag @s add poison_starver.spiting
scoreboard players set @s boss.time1 0

particle totem_of_undying ~ ~ ~ 0.5 1 0.5 0.2 100
playsound minecraft:entity.player.splash.high_speed master @a[distance=..15] ~ ~ ~
#function boss:poison_starver/skill3/summon