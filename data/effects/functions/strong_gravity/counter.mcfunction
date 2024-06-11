scoreboard players remove @s effects.strong_gravity.duration 1
scoreboard players add @s effects.strong_gravity.check_time 20
scoreboard players set @s actionbar.custom_effect 1
execute at @s run particle minecraft:block{block_state:"minecraft:stone"} ~ ~0.1 ~ 0.4 0 0.4 0.05 5 normal
execute if data entity @s {OnGround:1b} store result score @s effects.strong_gravity.pos_y run data get entity @s Pos[1] 100
execute if score @s effects.strong_gravity.duration matches 1.. run schedule function effects:strong_gravity/check 20t append
execute if score @s effects.strong_gravity.duration matches 0 run function effects:strong_gravity/clear
