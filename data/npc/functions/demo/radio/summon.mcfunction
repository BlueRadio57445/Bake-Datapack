# 複製此檔案來建立其他NPC檔案時，應將所有的 "demo" 替換成 "<region>"，"radio" 替換成 "<NPC_ID>"
# 0. NPC為唯一，因此召喚前應刪除擁有此tag之所有實體
kill @e[tag=npc.demo.radio]

# 1. 召喚顯示本體，可為盔甲架或其他實體(如: 村民、貓等)，CustomName用於儲存實體顯示名稱
summon minecraft:armor_stand ~ ~ ~ {Tags:["npc.this","npc.tag","npc.figure","npc.demo.radio"],Rotation:[90.0f,0.0f],CustomName:'{"text":"測試測試收音機"}',ShowArms:1b,NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:5592490}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5592405}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11206655}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"Blue_Radio"}}]}

# 2. 召喚互動實體，可依據顯示本體的碰撞箱調整互動實體的寬與高
summon minecraft:interaction ~ ~-0.05 ~ {Tags:["npc.this","npc.tag","npc.demo.radio"],width:0.6f,height:2.1f}

# 3. 召喚替代名條，召喚高度同樣可依據本體之碰撞箱調整(建議高度: 本體碰撞箱高度 + 0.475)
summon minecraft:text_display ~ ~2.475 ~ {Tags:["npc.this","npc.tag","npc.name","npc.demo.radio"],billboard:"center",background:-1073741825,transformation:{translation:[0.0f,-0.255f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# 4. 將當前的對話設定載入到指定位置，方便後續的通用函式使用
data modify storage npc_system:common This set from storage npc:demo radio

# 5. 執行召喚後處理之通用函式
function npc_system:common/summon
