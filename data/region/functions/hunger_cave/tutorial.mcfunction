#新手教學區域設置

#刪除所有新手教學區怪物
kill @e[tag=region.hunger_cave.mob]

#重置箱子
clone -167 94 971 -167 94 971 -167 98 971
clone -163 94 947 -163 94 947 -163 98 947
clone -252 97 898 -252 97 898 -252 101 898
clone -195 102 946 -195 102 946 -195 104 946
clone -209 98 917 -209 98 917 -209 100 917

#重置開箱紀錄分數
scoreboard players set $chest1 region.hunger_cave.crit.hp 0
scoreboard players set $chest2 region.hunger_cave.crit.hp 0
scoreboard players set $chest3 region.hunger_cave.crit.hp 0

#生成預設怪物
summon zombie -188 94 984 {PersistenceRequired:1b,NoAI:1b,Tags:["region.hunger_cave.mob","region.hunger_cave.zombie1"]}
summon creeper -292.00 110.00 895.00 {PersistenceRequired:1b,NoAI:1b,Tags:["region.hunger_cave.mob","region.hunger_cave.creeper1"]}

#玩家設定
gamemode adventure @a[gamemode=survival]
clear @a[gamemode=adventure]

#傳送至起點
tp @a[gamemode=adventure] -193 95 1013
