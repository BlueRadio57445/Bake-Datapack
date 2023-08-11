#箱子3(盾牌)
#生成骷髏X2

#紀錄已經執行用
scoreboard players set $chest3 region.hunger_cave.crit.hp 1

#生成怪物
summon minecraft:skeleton -261 113 905 {HandItems:[{},{id:"minecraft:bow",Count:1b}],Tags:["region.hunger_cave.mob","region.hunger_cave.temp"]}
summon minecraft:skeleton -263 113 891 {HandItems:[{id:"minecraft:bow",Count:1b}],Tags:["region.hunger_cave.mob","region.hunger_cave.temp"]}

#粒子與音效
execute at @e[type=skeleton,tag=region.hunger_cave.temp] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 20 normal
execute at @e[type=skeleton,tag=region.hunger_cave.temp,limit=1] run playsound minecraft:ambient.cave hostile @a ~ ~ ~ 0.5 1 0

#移除暫時標籤
tag @e[type=skeleton,tag=region.hunger_cave.temp] remove region.hunger_cave.temp