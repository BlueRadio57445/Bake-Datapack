# 要新增一個拳套，需要新增以下東西
# 函數：一個資料夾、一個左鍵函數、一個右鍵函數
# 進度：一個資料夾、一個左鍵進度、一個右鍵進度
# 另外需要什麼東西，請加到該拳套的資料夾裡

advancement revoke @s only weapons:gloves/storm_gloves/left
item modify entity @s weapon.mainhand weapons:gloves/uncharged

tag @s add this
execute at @s as @e[nbt={HurtTime:10s},type=#mobs] run function enemy:check_attacker
execute rotated as @s rotated ~ -15 positioned 0.0 0.0 0.0 run tp 00000000-0000-0000-0000-000000000000 ^ ^ ^1.8
data modify entity @e[tag=attacked,limit=1] Motion set from entity 00000000-0000-0000-0000-000000000000 Pos
tp 00000000-0000-0000-0000-000000000000 0.0 0.0 0.0
damage @e[tag=attacked,limit=1] 7 player_attack
tag @e[tag=attacked] remove attacked
tag @s remove this

playsound item.trident.riptide_2 master @a[distance=..10] ~ ~ ~
execute anchored eyes run function weapons:gloves/storm_gloves/particle1