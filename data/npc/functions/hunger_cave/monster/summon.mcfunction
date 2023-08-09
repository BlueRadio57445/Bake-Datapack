kill @e[tag=npc.hunger_cave.monster]

# 1. 召喚顯示本體，可為盔甲架或其他實體(如: 村民、貓等)
#    NPC顯示名稱將取用CustomName之內容
#    每次對話結束時NPC將轉回初始Rotation
summon minecraft:armor_stand ~ ~ ~ {Tags:["npc.this","npc.tag","npc.figure","npc.hunger_cave.monster"],Invisible:1b,Rotation:[90.0f,0.0f],CustomName:'{"text":"井裡的呼救聲"}',ShowArms:1b,NoBasePlate:1b,NoGravity:1b,Invulnerable:1b}

summon minecraft:interaction ~ ~-0.05 ~ {Tags:["npc.this","npc.tag","npc.hunger_cave.monster"],width:0.6f,height:2.1f}

summon minecraft:text_display ~ ~2.475 ~ {Tags:["npc.this","npc.tag","npc.name","npc.hunger_cave.monster"],billboard:"center",background:-1073741825,transformation:{translation:[0.0f,-0.255f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

data modify storage npc_system:common This set from storage npc:hunger_cave monster
function npc_system:common/summon
