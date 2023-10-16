# 執行者、執行位置是三叉戟

# 歸還三叉戟
scoreboard players set $is_player sanctuary_ench 0
execute store result score $is_player sanctuary_ench on origin if entity @s[type=player]
execute if score $is_player sanctuary_ench matches 1 run function sanctuary_ench:trident_sweep/return_trident

# cast
execute on origin at @s run function sanctuary_ench:trident_sweep/cast

kill @s