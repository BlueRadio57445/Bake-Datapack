# 消耗與檢查冷卻時間
$execute store result score $cd_ok knowledge unless score @s knowledge.cd.$(id) matches 1..
execute if score $cd_ok knowledge matches 1 run xp add @s -3 points

# 檢查通過時，施放
$execute if score $cd_ok knowledge matches 1 run function knowledge:$(id)/cast

# 重置&冷卻
$execute if score $cd_ok knowledge matches 1 run scoreboard players set @s knowledge.cd.$(id) $(cooldown)

# 顯示冷卻時間
execute if score $cd_ok knowledge matches 1 run function knowledge:cooldown/cooldown
