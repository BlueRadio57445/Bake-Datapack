summon marker ~ ~ ~ {Tags:["centipede.bullet"]}
execute as @e[tag=centipede.bullet] at @s run tp @s ~ ~ ~ facing entity @p
scoreboard players set $bullet centipede.cd 0
function boss:centipede/bullet