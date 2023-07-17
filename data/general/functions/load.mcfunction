scoreboard objectives add general.version dummy
scoreboard objectives add general.id dummy
scoreboard objectives add general.utils dummy
scoreboard objectives add general.const dummy
scoreboard objectives add general.logged_out minecraft.custom:minecraft.leave_game

scoreboard objectives add general.player.health health
scoreboard objectives add general.player.armor armor
scoreboard objectives add general.player.food food
scoreboard objectives add general.player.air air
scoreboard objectives add general.player.level level
scoreboard objectives add general.player.xp xp

scoreboard players set $0 general.const 0
scoreboard players set $10 general.const 10
scoreboard players set $20 general.const 20

# 若此記分板為空值，將其設為0
execute unless score $playerCount general.id = $playerCount general.id run scoreboard players set $playerCount general.id 0

# 設定區

# 強制載入 (-1, -1) ~ (0, 0) 共四個區塊，要注意別把需要使用的方塊或實體放到 (-16, -16) ~ (15, 15) 以外的區域喔，因為很可能會偵測不到
forceload add -1 -1 0 0

# 字串指令合併與自動執行: y = -1
# 之後根據與其他成員的討論可能會有所變動
# general:gcm/ Generated Commands Manager, 網址: https://github.com/xuese0513/Generated-Commands-Manager
# 此處為末天魔改版本，感謝雪色提供此技術
function general:_gcm_/setup

# 三角函數專用Marker，用完記得tp回0 0 0 (UUID: 00000000-0000-0000-0000-000000000000)
kill @e[type=marker,tag=tri]
execute unless entity @e[type=marker,tag=tri] run summon marker 0 0 0 {Tags:["tri"],UUID:[I;0,0,0,0]}

# 放一個界伏盒，用於任何需要替換玩家物品欄內容的場合
setblock 0 16 0 yellow_shulker_box

# 開發者專用功能: 若於此資料夾新增了需要進行初始化的功能，此分數將被技術總監加1
scoreboard players set $datapack general.version 1
execute unless score $world general.version = $datapack general.version run function general:player_reset
