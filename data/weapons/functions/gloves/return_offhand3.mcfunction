execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["weapons.gloves.return"]}
data modify entity @e[limit=1,tag=weapons.gloves.return] Item set from storage gloves return
tag @e[tag=weapons.gloves.return] remove weapons.gloves.return
