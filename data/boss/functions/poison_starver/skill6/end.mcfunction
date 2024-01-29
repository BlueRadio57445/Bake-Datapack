# 執行者、執行位置是災厄餓死鬼
kill @e[type=villager,tag=poison_starver.villager]
scoreboard players set @s boss.count0 0
attribute @s minecraft:generic.follow_range base set 35
attribute @s minecraft:generic.knockback_resistance base set 0.9
tag @s remove boss.casting
tag @s remove poison_starver.clawing