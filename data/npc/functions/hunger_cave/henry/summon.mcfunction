kill @e[tag=npc.hunger_cave.henry]
summon minecraft:armor_stand ~ ~ ~ {Tags:["npc.this","npc.tag","npc.figure","npc.hunger_cave.henry"],Rotation:[90.0f,0.0f],CustomName:'{"text":"咆嘯亨利"}',ShowArms:1b,NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:13948159}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"henry"}}]}
summon minecraft:interaction ~ ~-0.05 ~ {Tags:["npc.this","npc.tag","npc.hunger_cave.henry"],width:0.6f,height:2.1f}
summon minecraft:text_display ~ ~2.475 ~ {Tags:["npc.this","npc.tag","npc.name","npc.hunger_cave.henry"],billboard:"center",background:-1073741825,transformation:{translation:[0.0f,-0.255f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
data modify storage npc_system:common This set from storage npc:hunger_cave henry
function npc_system:common/summon
