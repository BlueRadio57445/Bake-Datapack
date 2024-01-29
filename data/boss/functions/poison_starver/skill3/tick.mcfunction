# 執行者、執行位置是嘔噁餓死鬼

scoreboard players add @s boss.time1 1

tp @s[scores={boss.time1=..12}] ~ ~ ~ ~30 45

execute as @s[scores={boss.time1=12}] run function boss:poison_starver/skill3/end