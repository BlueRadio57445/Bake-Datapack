#箱子1(木劍)
#生成殭屍X1，蜘蛛X1

#紀錄已經執行用
scoreboard players set $chest1 region.hunger_cave.crit.hp 1

#生成怪物
summon minecraft:zombie -162 102 966 {PersistenceRequired:1b,Tags:["region.hunger_cave.mob","region.hunger_cave.temp"]}
summon minecraft:spider -172 101 967 {PersistenceRequired:1b,Tags:["region.hunger_cave.mob","region.hunger_cave.temp"]}

#粒子與音效
execute at @e[tag=region.hunger_cave.temp] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 20 normal
execute at @e[tag=region.hunger_cave.temp,limit=1] run playsound minecraft:ambient.cave hostile @a ~ ~ ~ 0.5 1 0

#移除暫時標籤
tag @e[tag=region.hunger_cave.temp] remove region.hunger_cave.temp