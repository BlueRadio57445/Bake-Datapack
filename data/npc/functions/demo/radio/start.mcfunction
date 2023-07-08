# 複製此檔案來建立其他NPC檔案時，應將所有的 "demo" 替換成 "<region>"，"radio" 替換成 "<NPC_ID>"
# 0. 消除觸發此函式的進度，使其能重複觸發
advancement revoke @s only npc:demo/radio_start

# 1. 將所有屬於同一個NPC的實體標上this標籤
tag @e[tag=npc.demo.radio] add npc.this

# 2. 將當前的對話設定載入到指定位置，方便後續的通用函式使用
data modify storage npc_system:common This set from storage npc:demo radio

# 3. 若有符合特殊對話之條件(例如任務說明與交付等)，將於此處偵測並成為接下來的對話，順序越前面優先度越高
# execute if score $<region>.<quest_ID> quest.state matches # unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:dialogue <quest_ID>.<stage>
execute if score $demo.mysterious_stone quest.state matches 1 unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:demo mysterious_stone.Start
execute if score $demo.mysterious_stone quest.state matches 2 unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:demo mysterious_stone.Start_Remind
execute if score $demo.mysterious_stone quest.state matches 3 unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:demo mysterious_stone.Turn_In
execute if score $demo.mysterious_stone quest.state matches 4 unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:demo mysterious_stone.Reward

# 4. 執行開始對話之通用函式
function npc_system:common/start

# 5. 將通用函式中修改的部分更新到<NPC_ID>底下
data modify storage npc:demo radio.Normal set from storage npc_system:common This.Normal

# 6. 移除所有this標籤
tag @e[tag=npc.this] remove npc.this 
