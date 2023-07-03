# 這是用schedule遞迴的函數
# 一樣會自己停下來

execute as @e[type=husk,tag=disaster_starver.clawing] at @s if entity @e[type=villager,tag=disaster_starver.villager,nbt={HurtTime:9s}] run function boss:disaster_starver/skill4/claw
execute as @e[type=husk,tag=disaster_starver.clawing] at @s if entity @e[type=villager,tag=disaster_starver.villager,nbt={HurtTime:9s}] run scoreboard players add @s boss.count0 1

execute as @e[type=husk,tag=disaster_starver.clawing,scores={boss.count0=5..}] run kill @e[type=villager,tag=disaster_starver.villager]
execute as @e[type=husk,tag=disaster_starver.clawing,scores={boss.count0=5..}] run function boss:disaster_starver/skill4/end

execute if entity @e[type=villager,tag=disaster_starver.villager] run schedule function boss:disaster_starver/skill4/claw_detect 1t