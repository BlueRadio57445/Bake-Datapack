# 這是用schedule遞迴的函數
# 一樣會自己停下來

execute as @e[type=husk,tag=boss.disaster_starver] at @s if entity @e[type=villager,tag=disaster_starver.villager,nbt={HurtTime:9s}] run function boss:disaster_starver/skill4/claw

execute as @e[type=husk,tag=boss.disaster_starver] unless entity @e[type=villager,tag=disaster_starver.villager] run attribute @s minecraft:generic.follow_range base set 35
execute as @e[type=husk,tag=boss.disaster_starver] unless entity @e[type=villager,tag=disaster_starver.villager] run attribute @s minecraft:generic.knockback_resistance base set 0
execute if entity @e[type=villager,tag=disaster_starver.villager] run schedule function boss:disaster_starver/skill4/claw_detect 1t