# 要新增一個拳套，需要新增以下東西
# 函數：一個資料夾、一個左鍵函數、一個右鍵函數
# 進度：一個資料夾、一個左鍵進度、一個右鍵進度
# 另外需要什麼東西，請加到該拳套的資料夾裡

advancement revoke @s only weapons:gloves/storm_gloves/right
kill @e[type=#arrows,sort=nearest,limit=1]

execute as @e[distance=0.1..8,type=#mobs,type=!player] run data modify entity @s Motion[1] set value 1.0d
execute as @e[distance=0.1..8,type=#mobs,type=!player] run damage @s 3 explosion

playsound item.trident.riptide_3 master @a[distance=..10] ~ ~ ~
function weapons:gloves/storm_gloves/particle2


