# 執行者、執行位置是三叉戟

# 歸還三叉戟
execute on origin if entity @s[type=player] run function sanctuary_ench:trident_sweep/return_trident

# cast
execute on origin at @s run function sanctuary_ench:trident_sweep/cast

kill @s