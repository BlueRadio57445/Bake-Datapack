# 以下開放新增偵測用指令(一個功能最多一條，可呼叫函數)
execute as @s[predicate=weapons:sword/blood_sword/hold] run function weapons:sword/blood_sword/calculate_health
execute as @s[predicate=weapons:sword/fat_sword/hold] run function weapons:sword/fat_sword/check
