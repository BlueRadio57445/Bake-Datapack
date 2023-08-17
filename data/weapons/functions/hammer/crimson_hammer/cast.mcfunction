# 執行者，執行位置是那個神奇的標記
summon wolf ~ ~ ~ {Tags:["hammer.crimson_wolf"],AngerTime:600}
effect give @e[tag=hammer.crimson_wolf] wither infinite 0 false
execute as @e[tag=hammer.crimson_wolf] run data modify entity @s Owner set from entity @p[tag=this] UUID
kill @s