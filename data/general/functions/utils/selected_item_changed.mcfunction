# 手持物品冷卻更新
execute as @s[predicate=actionbar:cooldown/hotbar_update] run function actionbar:cooldown/hotbar/check
execute as @s[predicate=actionbar:cooldown/offhand_update] run function actionbar:cooldown/offhand/check

# 以下開放新增偵測用指令(一個功能最多一條，可呼叫函數)
execute as @s[predicate=weapons:sword/blood_sword/hold] run function weapons:sword/blood_sword/calculate_health
execute as @s[predicate=weapons:sword/fat_sword/hold] run function weapons:sword/fat_sword/check
