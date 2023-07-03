# 執行者、執行位置是災厄餓死鬼
tag @s add disaster_starver.clawing

# 考慮新增一個不會碰撞的隊伍
summon minecraft:villager ~ ~-3 ~ {Tags:["disaster_starver.villager"],NoAI:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:1000,ShowParticles:false}],Attributes:[{Name:"minecraft:generic.max_health",Base:100d}],Health:100f}
execute as @e[type=minecraft:villager,tag=disaster_starver.villager] run tp @s ^ ^ ^1
# tp 是為了抵銷隱形的閃一下

attribute @s minecraft:generic.follow_range base set 0
attribute @s minecraft:generic.knockback_resistance base set 1
damage @s 0.00001 minecraft:mob_attack by @e[sort=nearest,limit=1,type=minecraft:villager,tag=disaster_starver.villager]
attribute @s minecraft:generic.follow_range base set 2

function boss:disaster_starver/skill4/claw_detect