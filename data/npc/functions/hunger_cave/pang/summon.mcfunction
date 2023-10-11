kill @e[tag=npc.hunger_cave.pang]

summon minecraft:armor_stand ~ ~ ~ {Tags:["npc.this","npc.tag","npc.figure","npc.hunger_cave.pang"],Rotation:[180.0f,0.0f],CustomName:'{"text":"商人小胖"}',ShowArms:1b,NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3153952}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:4210752},Trim:{material:"minecraft:netherite",pattern:"minecraft:sentry"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8405056},Trim:{material:"minecraft:quartz",pattern:"minecraft:vex"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"suehirotaihoku7"}}]}
summon minecraft:interaction ~ ~-0.05 ~ {Tags:["npc.this","npc.tag","npc.hunger_cave.pang"],width:0.6f,height:2.1f}
summon minecraft:text_display ~ ~2.475 ~ {Tags:["npc.this","npc.tag","npc.name","npc.hunger_cave.pang"],billboard:"center",background:-1073741825,transformation:{translation:[0.0f,-0.255f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
function npc_system:common/summon {region:"hunger_cave",npc:"pang"}
