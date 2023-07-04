# 執行者、執行位置是災厄餓死鬼
# 生成一個村民，並且讓王去打他


summon minecraft:villager ~ ~-3 ~ {Tags:["disaster_starver.villager"],Team:"boss.no_collide",NoAI:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:-1,ShowParticles:false},{Id:11,Duration:-1,Amplifier:4b,ShowParticles:false}]}
execute as @e[type=minecraft:villager,tag=disaster_starver.villager] run tp @s ^ ^ ^1
# tp 是為了抵銷隱形的閃一下

function boss:disaster_starver/skill4/villager_attack