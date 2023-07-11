# 執行者、執行位置是災厄餓死鬼

scoreboard players add @s boss.time1 1

execute as @s[scores={boss.time1=17}] run function boss:disaster_starver/skill4/summon_villager

# 只要王想打玩家，就讓村民拉仇恨
execute as @s[scores={boss.time1=18..}] at @s on target if entity @s[type=player] as @e[type=husk,tag=disaster_starver.clawing] run function boss:disaster_starver/skill4/villager_attack

# 把村民送到眼前
execute as @e[type=villager,tag=disaster_starver.villager] at @s at @e[sort=nearest,limit=1,type=husk,tag=disaster_starver.clawing] rotated ~ 0 run tp @s ^ ^ ^1

execute if entity @e[type=villager,tag=disaster_starver.villager,nbt={HurtTime:9s}] run function boss:disaster_starver/skill4/claw
execute if entity @e[type=villager,tag=disaster_starver.villager,nbt={HurtTime:9s}] run scoreboard players add @s boss.count0 1

execute as @s[scores={boss.count0=6..}] run function boss:disaster_starver/skill4/end