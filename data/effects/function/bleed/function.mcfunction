scoreboard players add @s effects.bleed.check_time 10
execute if score @s effects.bleed.amplifier matches 0 run damage @s 2 effects:bleed
execute if score @s effects.bleed.amplifier matches 1 run damage @s 4 effects:bleed
execute if score @s effects.bleed.amplifier matches 2 run damage @s 6 effects:bleed
execute if score @s effects.bleed.amplifier matches 3 run damage @s 8 effects:bleed
execute if score @s effects.bleed.amplifier matches 4 run damage @s 10 effects:bleed
execute at @s anchored eyes run particle minecraft:block{block_state:"minecraft:redstone_block"} ^ ^ ^ 0.4 0.4 0.4 0.05 5 normal
schedule function effects:bleed/check 10t append
