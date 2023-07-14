scoreboard players set @s effects.bleed.applied 0
scoreboard players operation @s effects.bleed.amplifier = $set effects.amplifier
scoreboard players operation @s effects.bleed.duration = $set effects.duration
execute store result score @s effects.bleed.check_time run time query gametime
scoreboard players add @s effects.bleed.check_time 10
schedule function effects:bleed/check 10t append
