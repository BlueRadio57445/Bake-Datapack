scoreboard players set @s effects.bleed.applied 0
scoreboard players operation @s effects.bleed.amplifier = $set effects.amplifier
scoreboard players operation @s effects.bleed.duration = $set effects.duration
scoreboard players operation @s effects.bleed.check_time = $gametime general.utils
tag @s add effects.bleed
scoreboard players add @s effects.bleed.check_time 10
scoreboard players set @s actionbar.custom_effect 1
schedule function effects:bleed/check 10t append
