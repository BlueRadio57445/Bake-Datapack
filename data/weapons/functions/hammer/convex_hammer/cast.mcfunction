# 執行者，執行位置是那個神奇的標記
execute unless entity @s[gamemode=adventure] unless block ~ ~ ~ #minecraft:wither_immune run setblock ~ ~ ~ minecraft:air destroy
execute unless entity @s[gamemode=adventure] unless block ~ ~-1 ~ #minecraft:wither_immune if block ~ ~ ~ minecraft:air run clone ~ ~-1 ~ ~ ~-1 ~ ~ ~ ~ replace move
kill @s