# 執行者，執行位置是那個神奇的標記
execute if entity @s[gamemode=adventure] run return 0
execute if block ~ ~-1 ~ #minecraft:wither_immune run return 0
clone ~ ~-1 ~ ~ ~-1 ~ ~ ~ ~ replace move
kill @s