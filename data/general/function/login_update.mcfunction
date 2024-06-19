advancement revoke @s only general:login_update

# 將對話狀態重設
scoreboard players set @s npc.state 0

# 若只有一個玩家，大部分時候代表這是伺服器啟動後第一次有區塊載入
execute store result score $playerOnline general.utils if entity @a
execute if score $playerOnline general.utils matches 1 run scoreboard players set @e[type=minecraft:marker,tag=npc.idle] npc.idle -1

# 檢查玩家任務版本是否與系統相同
execute unless score @s quest.version = $system quest.version run function quest_system:sync

# 重設此玩家的效果紀錄與計時器
function actionbar:login_update

scoreboard players set @s general.logged_out 0
