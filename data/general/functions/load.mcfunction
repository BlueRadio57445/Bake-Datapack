scoreboard objectives add general.id dummy
scoreboard objectives remove general.team
scoreboard objectives remove general.shareQuest

# 若此記分板為空值，將其設為0
execute unless score $playerCount general.id = $playerCount general.id run scoreboard players set $playerCount general.id 0

# 設定區
scoreboard players set $system general.shareQuest 0

data remove storage npc_system:quest Players
data remove storage npc_system:dialogue test_radio
data remove storage npc_system:dialogue test_endsky
data remove storage npc_system:dialogue This
data remove storage quest:dialogue demo
kill @e[tag=npc.test_radio]
kill @e[tag=npc.test_endsky]

# 強制載入 (-1, -1) ~ (0, 0) 共四個區塊，要注意別把需要使用的方塊或實體放到 (-16, -16) ~ (15, 15) 以外的區域喔，因為很可能會偵測不到
forceload add -1 -1 0 0

# 字串指令合併與自動執行: y = -1
# 之後根據與其他成員的討論可能會有所變動
# general:gcm/ Generated Commands Manager, 網址: https://github.com/xuese0513/Generated-Commands-Manager
# 此處為末天魔改版本，感謝雪色提供此技術
function general:_gcm_/setup

# 三角函數專用Marker，用完記得tp回0 0 0
kill @e[type=marker,tag=tri]
execute unless entity @e[type=marker,tag=tri] run summon marker 0 0 0 {Tags:["tri"],UUID:[I;0,0,0,0]}

# 放一個界伏盒，用於任何需要替換玩家物品欄內容的場合
setblock 0 16 0 yellow_shulker_box

