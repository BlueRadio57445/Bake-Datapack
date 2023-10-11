execute at @s run particle minecraft:block minecraft:stone ~ ~0.1 ~ 0.4 0 0.4 0.05 5 normal
execute if data entity @s {OnGround:1b} store result score @s effects.strong_gravity.pos_y run data get entity @s Pos[1] 100
execute if score $set effects.duration matches 1 run effect give @s minecraft:slowness 1 4 true
execute if score $set effects.duration matches 1 run effect give @s[type=minecraft:player] minecraft:levitation 1 214 true
execute if score $set effects.duration matches 2.. run effect give @s minecraft:slowness 2 4 true
execute if score $set effects.duration matches 2.. run effect give @s[type=minecraft:player] minecraft:levitation 2 214 true
attribute @s generic.knockback_resistance modifier add 00000C00-0000-0C00-0000-0C0000000C00 "effects:strong_gravity" 0.5 add
tag @s add effects.strong_gravity
scoreboard players operation @s effects.strong_gravity.duration = $set effects.duration
scoreboard players operation @s effects.strong_gravity.check_time = $gametime general.utils
scoreboard players add @s effects.strong_gravity.check_time 20
scoreboard players set @s actionbar.custom_effect 1
schedule function effects:strong_gravity/check 20t append
