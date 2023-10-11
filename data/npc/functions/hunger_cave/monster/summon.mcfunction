kill @e[tag=npc.hunger_cave.monster]

summon minecraft:armor_stand ~ ~ ~ {Tags:["npc.this","npc.tag","npc.figure","npc.hunger_cave.monster"],Invisible:1b,Rotation:[90.0f,0.0f],CustomName:'{"text":"井裡的呼救聲"}',ShowArms:1b,NoBasePlate:1b,NoGravity:1b,Invulnerable:1b}
summon minecraft:interaction ~ ~-0.05 ~ {Tags:["npc.this","npc.tag","npc.hunger_cave.monster"],width:0.6f,height:2.1f}
summon minecraft:text_display ~ ~2 ~ {Tags:["npc.this","npc.tag","npc.name","npc.hunger_cave.monster"],billboard:"center",background:-1073741825,transformation:{translation:[0.0f,-0.255f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
function npc_system:common/summon {region:"hunger_cave",npc:"monster"}
