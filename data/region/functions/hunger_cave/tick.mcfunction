#通道偵測(無開箱生怪)
execute if entity @a[x=-197,y=97,z=998,gamemode=survival,dx=0,dy=0,dz=0] run data modify entity @e[type=minecraft:zombie,tag=region.hunger_cave.zombie1,limit=1] NoAI set value 0
execute if entity @a[x=-279,y=113,z=898,gamemode=survival,dx=0,dy=0,dz=0] run data modify entity @e[type=minecraft:creeper,tag=region.hunger_cave.creeper1,limit=1] NoAI set value 0

#開箱偵測
execute positioned -167 98 971 if entity @a[gamemode=survival,distance=..7] if score $chest1 region.hunger_cave.crit.hp matches 0 unless blocks -167 98 971 -167 98 971 -167 94 971 all run function region:hunger_cave/tutorial/chest1
execute positioned -163 98 947 if entity @a[gamemode=survival,distance=..7] if score $chest2 region.hunger_cave.crit.hp matches 0 unless blocks -163 94 947 -163 94 947 -163 98 947 all if block -163 96 947 minecraft:redstone_lamp[lit=false] run function region:hunger_cave/tutorial/chest2
execute positioned -252 101 898 if entity @a[gamemode=survival,distance=..7] if score $chest3 region.hunger_cave.crit.hp matches 0 unless blocks -252 97 898 -252 97 898 -252 101 898 all run function region:hunger_cave/tutorial/chest3

#傳送&進下一個階段
execute if score $hunger_cave region matches 1 positioned -331 70 933 if entity @a[distance=..33,gamemode=survival] run scoreboard players set $hunger_cave region 2
execute positioned -331 70 933 run spawnpoint @a[distance=..33,gamemode=survival] -339 -21 988
execute positioned -331 70 933 run gamemode survival @a[distance=..33,gamemode=survival]
execute positioned -331 70 933 as @a[distance=..33,gamemode=!spectator] run tp @s -343 35 971

# 在上一個活力蘋果重生
execute if score $tutorial region matches 0 positioned -178 102 943 if entity @a[distance=..3] run spawnpoint @a -183 102 947
execute if score $tutorial region matches 0 positioned -178 102 943 if entity @a[distance=..3] run scoreboard players set $tutorial region 1
execute if score $tutorial region matches 1 positioned -218 101 893 if entity @a[distance=..3] run spawnpoint @a -223 98 892
execute if score $tutorial region matches 1 positioned -218 101 893 if entity @a[distance=..3] run scoreboard players set $tutorial region 2
execute if score $tutorial region matches 2 positioned -305 115 895 if entity @a[distance=..3] run spawnpoint @a -308 108 910
execute if score $tutorial region matches 2 positioned -305 115 895 if entity @a[distance=..3] run scoreboard players set $tutorial region 3

# 更改玩家血量
execute as @a[tag=region.hunger_cave.defeat] run attribute @s generic.max_health modifier add 00000000-0000-0000-0000-000000001200 "boss1_defeat" -18 add

# 合成鑰匙碎片
execute as @e[type=item,predicate=region:hunger_cave/craft_key] at @s run function region:hunger_cave/key/craft_key

# 鑰匙開門
execute as @e[type=item_frame,tag=region.hunger_cave.key_frame,predicate=region:hunger_cave/key_in_frame] run function region:hunger_cave/key/open_gate
execute as @e[type=item_frame,tag=region.hunger_cave.key_frame] if data entity @s Item unless predicate region:hunger_cave/key_in_frame at @s run function region:hunger_cave/key/pop_out

# Demo完結
execute positioned 476 43 960 as @a[distance=..4] at @s if block ~ ~-1 ~ beacon run function region:hunger_cave/monument/tp_shelter

# 支線任務
# 食人魔 - 眺井&出井
execute positioned -161 -52 975 as @a[distance=..3] at @s if block ~ ~-1 ~ barrier run function quest:hunger_cave/monster/jump_well
execute positioned -163 -41 987 as @a[distance=..3] at @s if block ~ ~2 ~ barrier run tp @s -160 -51 969