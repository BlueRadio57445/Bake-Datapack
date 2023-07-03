# 執行者、執行位置是災厄餓死鬼
# 生成一個村民，並且讓王去打他


summon minecraft:villager ~ ~-3 ~ {Tags:["disaster_starver.villager"],Team:"boss.no_collide",NoAI:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:-1,ShowParticles:false},{Id:11,Duration:-1,Amplifier:4b,ShowParticles:false}]}
execute as @e[type=minecraft:villager,tag=disaster_starver.villager] run tp @s ^ ^ ^1
# tp 是為了抵銷隱形的閃一下

# 如果村民跟玩家同時打餓死鬼匯出Bug
data merge entity @s {Invulnerable:0b}
attribute @s minecraft:generic.follow_range base set 0
attribute @s minecraft:generic.knockback_resistance base set 1
damage @s 0.00001 minecraft:mob_attack by @e[sort=nearest,limit=1,type=minecraft:villager,tag=disaster_starver.villager]
attribute @s minecraft:generic.follow_range base set 2