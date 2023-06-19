advancement revoke @s only general:login_update
scoreboard players set @s general.logged_out 0

# 將對話狀態重設
scoreboard players set @s npc.state 0

# 檢查玩家任務版本是否與系統相同
execute unless score @s quest.version = $system quest.version run function quest_system:sync
