# 執行者是箭矢
execute on passengers run tag @s add this
data modify entity @e[limit=1,tag=this] data.Motion set from entity @s Motion
tag @e[tag=this] remove this
execute at @s run particle crit ~ ~ ~ 0 0 0 0.1 3