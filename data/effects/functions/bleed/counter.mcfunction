scoreboard players remove @s effects.bleed.duration 1
execute store result score @s effects.bleed.check_time run time query gametime
scoreboard players add @s effects.bleed.check_time 20
execute at @s anchored eyes run particle minecraft:block minecraft:redstone_block ^ ^ ^ 0.4 0.4 0.4 0.05 5 normal
execute if score @s effects.bleed.amplifier matches 0 run damage @s 2 effects:bleed
execute if score @s effects.bleed.amplifier matches 1 run damage @s 4 effects:bleed
execute if score @s effects.bleed.amplifier matches 2 run damage @s 6 effects:bleed
execute if score @s effects.bleed.amplifier matches 3 run damage @s 8 effects:bleed
execute if score @s effects.bleed.amplifier matches 4 run damage @s 10 effects:bleed
execute if score @s effects.bleed.duration matches 1.. run schedule function effects:bleed/check 20t append
execute if score @s effects.bleed.duration matches 0 run function effects:bleed/clear
