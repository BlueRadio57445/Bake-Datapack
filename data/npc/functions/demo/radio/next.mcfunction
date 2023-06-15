# 複製此檔案來建立其他NPC檔案時，應將所有的 "demo" 替換成 "<region>"，"radio" 替換成 "<NPC_ID>"
# 0. 消除觸發此函式的進度，使其能重複觸發
advancement revoke @s only npc:demo/radio_next

# 1. 將所有屬於同一個NPC的實體標上this標籤
tag @e[tag=npc.demo.radio] add npc.this

# 2. 執行對話過程之通用函式
function npc_system:common/next

# 3. 移除所有this標籤
tag @e[tag=npc.this] remove npc.this 
