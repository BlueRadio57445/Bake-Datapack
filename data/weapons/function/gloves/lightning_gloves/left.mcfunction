# 要新增一個拳套，需要新增以下東西
# 函數：一個資料夾、一個左鍵函數、一個右鍵函數
# 進度：一個資料夾、一個左鍵進度、一個右鍵進度
# 另外需要什麼東西，請加到該拳套的資料夾裡

advancement revoke @s only weapons:gloves/lightning_gloves/left

tag @s add general.attacker
execute at @s as @e[type=#mobs,nbt={HurtTime:10s}] run function general:utils/check_attacker
execute at @e[tag=general.attacked] run function weapons:gloves/lightning_gloves/many_lightning
tag @e[tag=general.attacked] remove general.attacked
tag @s remove general.attacker