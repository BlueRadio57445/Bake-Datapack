# 要新增一個拳套，需要新增以下東西
# 函數：一個資料夾、一個左鍵函數、一個右鍵函數
# 進度：一個資料夾、一個左鍵進度、一個右鍵進度
# 另外需要什麼東西，請加到該拳套的資料夾裡

advancement revoke @s only weapons:gloves/lightning_gloves/right
kill @e[type=#arrows,sort=nearest,limit=1]

scoreboard players set @s weapons.gloves.lightning_duration 20

