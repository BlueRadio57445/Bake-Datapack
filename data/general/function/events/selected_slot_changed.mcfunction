scoreboard players operation @s general.utils.selected_slot = @s general.player.selected_slot

# 以下開放新增偵測用指令(一個功能最多一條，可呼叫函數)
execute as @s[predicate=weapons:gloves/system/holding_main_glove] run function weapons:gloves/system/glove_changed
execute as @s[scores={weapons.gloves.holding=1},predicate=!weapons:gloves/system/holding_main_glove,predicate=!weapons:gloves/system/swapping_main_glove] run function weapons:gloves/system/main_glove_removed
