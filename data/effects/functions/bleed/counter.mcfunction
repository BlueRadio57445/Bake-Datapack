scoreboard players remove @s effects.bleed.duration 1
scoreboard players add @s effects.bleed.check_time 10
execute if score @s effects.bleed.duration matches 1.. run schedule function effects:bleed/check 10t append
