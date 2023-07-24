#通道偵測(無開箱生怪)
execute if entity @a[x=-197,y=97,z=998,gamemode=adventure] run data modify entity @e[type=minecraft:zombie,tag=region.hunger_cave.zombie1,limit=1] NoAI set value 0
execute if entity @a[x=-279,y=113,z=898,gamemode=adventure] run data modify entity @e[type=minecraft:creeper,tag=region.hunger_cave.creeper1,limit=1] NoAI set value 0

#開箱偵測
execute positioned -167 98 971 if entity @a[gamemode=adventure,distance=..7] if score $chest1 region.hunger_cave.crit.hp matches 0 unless blocks -167 98 971 -167 98 971 -167 94 971 all run function region:hunger_cave/chest1
execute positioned -163 98 947 if entity @a[gamemode=adventure,distance=..7] if score $chest2 region.hunger_cave.crit.hp matches 0 unless blocks -163 94 947 -163 94 947 -163 98 947 all if block -163 96 947 minecraft:redstone_lamp[lit=false] run function region:hunger_cave/chest2
execute positioned -252 101 898 if entity @a[gamemode=adventure,distance=..7] if score $chest3 region.hunger_cave.crit.hp matches 0 unless blocks -252 97 898 -252 97 898 -252 101 898 all run function region:hunger_cave/chest3

#傳送
execute positioned -331 70 933 as @a[distance=..33,gamemode=adventure] run tp @s -343 35 971