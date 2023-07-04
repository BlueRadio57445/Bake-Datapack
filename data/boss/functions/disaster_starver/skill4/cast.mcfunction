# 執行者、執行位置是災厄餓死鬼
tag @s add disaster_starver.clawing
attribute @s minecraft:generic.knockback_resistance base set 1

playsound entity.zombie.infect master @a[distance=..10]
particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0.1 20

scoreboard players set @s boss.time1 0
scoreboard players set @s boss.count0 0
function boss:disaster_starver/skill4/claw_detect