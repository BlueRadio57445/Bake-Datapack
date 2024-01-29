# 執行者、執行位置是嘔噁餓死鬼

scoreboard players add @s boss.time1 1

execute if score @s boss.time1 matches ..12 anchored eyes run particle glow_squid_ink ^ ^ ^1 0 0 0 0.1 1 force

execute as @s[scores={boss.time1=13}] run function boss:poison_starver/skill5/end