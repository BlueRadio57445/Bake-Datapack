# 當進度觸發時，檢查冷卻時間與消耗
execute store result score $cd_ok knowledge unless score @s knowledge.cd.earth_shield matches 1..
execute if score $cd_ok knowledge matches 1 run xp add @s -10 points

# 檢查通過時，施放
execute if score $cd_ok knowledge matches 1 run function knowledge:earth_shield/cast

# 重置&冷卻
execute if score $cd_ok knowledge matches 1 run scoreboard players set @s knowledge.cd.earth_shield 20
advancement revoke @s only knowledge:earth_shield

item modify entity @s[scores={knowledge.mainhand=1}] weapon.mainhand knowledge:clear_use
item modify entity @s[scores={knowledge.offhand=1}] weapon.offhand knowledge:clear_use
scoreboard players reset @s knowledge.mainhand
scoreboard players reset @s knowledge.offhand