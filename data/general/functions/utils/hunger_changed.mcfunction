scoreboard players operation @s general.utils.food = @s general.player.food

# 以下開放新增偵測用指令(一個功能最多一條，可呼叫函數)
execute as @s[predicate=weapons:sword/fat_sword/hold] run function weapons:sword/fat_sword/check
