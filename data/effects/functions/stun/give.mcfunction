execute at @s anchored eyes run particle minecraft:dust 1 1 0 1 ^ ^ ^ 0.4 0.4 0.4 0.05 5 normal
$scoreboard players set @s effects.stun.duration $(duration)
scoreboard players operation @s effects.stun.check_time = $gametime general.utils
tag @s add effects.stun
execute if score @s effects.stun.duration matches 1 run effect give @s minecraft:slowness 1 6 true
execute if score @s effects.stun.duration matches 1 run effect give @s[type=minecraft:player] minecraft:jump_boost 1 128 true
execute if score @s effects.stun.duration matches 2.. run effect give @s minecraft:slowness 2 6 true
execute if score @s effects.stun.duration matches 2.. run effect give @s[type=minecraft:player] minecraft:jump_boost 2 128 true
scoreboard players add @s effects.stun.check_time 20
scoreboard players set @s actionbar.custom_effect 1
schedule function effects:stun/check 20t append
