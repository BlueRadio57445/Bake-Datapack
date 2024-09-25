# 執行者，執行位置是那個神奇的標記
execute as @e[distance=..3,type=#mobs,type=!player] run damage @s 5 player_attack by @p[tag=this]
execute at @e[distance=..3,type=#mobs,type=!player] run particle block oak_log ~ ~1 ~ 0.2 0.2 0.2 0.1 50
particle block oak_log ~ ~0.1 ~ 0.2 0.2 0.2 0.1 50
playsound minecraft:entity.zombie.attack_wooden_door master @a[distance=..5] ~ ~ ~
kill @s