execute on passengers run tag @s[type=minecraft:marker] add npc.tmp
execute anchored eyes rotated as @e[limit=1,type=minecraft:marker,tag=npc.tmp,distance=..16] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if score @s npc.reset matches 1 run data modify entity @s Rotation set from entity @e[limit=1,type=minecraft:marker,tag=npc.tmp,distance=..16] Rotation
execute if score @s npc.reset matches 1 on passengers run kill @s[type=minecraft:marker]
data modify entity @s[type=minecraft:armor_stand] Pose.Head set value [0.1f,0f,0f]
data modify entity @s[type=minecraft:armor_stand] Pose.Head[0] set from entity @s Rotation[1]
scoreboard players remove @s npc.reset 1
