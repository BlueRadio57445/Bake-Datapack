#新手教學區域設置

#刪除所有新手教學區怪物
kill @e[tag=region.hunger_cave.mob]

# 放生怪磚
setblock -210 100 904 minecraft:spawner{Delay:0s,MinSpawnDelay:160s,MaxSpawnDelay:320,SpawnCount:1,RequiredPlayerRange:8s,SpawnData:{entity:{id:"skeleton",CustomName:'{"text": "骨包皮","color": "gray"}',HandItems:[],Tags:["region.hunger_cave.mob"]}}} destroy

#重置箱子
clone -167 94 971 -167 94 971 -167 98 971
clone -163 94 947 -163 94 947 -163 98 947
clone -252 97 898 -252 97 898 -252 101 898
clone -195 102 946 -195 102 946 -195 104 946
clone -209 98 917 -209 98 917 -209 100 917

# 重裝活力蘋果
loot replace block -186 102 947 container.13 loot items:food/vitality_apple
loot replace block -223 98 889 container.13 loot items:food/vitality_apple
loot replace block -308 108 913 container.13 loot items:food/vitality_apple

#重置開箱紀錄分數
scoreboard players set $chest1 region.hunger_cave.crit.hp 0
scoreboard players set $chest2 region.hunger_cave.crit.hp 0
scoreboard players set $chest3 region.hunger_cave.crit.hp 0

#生成預設怪物
summon zombie -188 94 984 {PersistenceRequired:1b,NoAI:1b,Tags:["region.hunger_cave.mob","region.hunger_cave.zombie1"]}
summon creeper -292.00 110.00 895.00 {PersistenceRequired:1b,NoAI:1b,Tags:["region.hunger_cave.mob","region.hunger_cave.creeper1"]}

spawnpoint @a -193 95 1013
tp @a -193 95 1013
scoreboard players set $tutorial region 0