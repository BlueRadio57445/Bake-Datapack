# 執行者、執行位置是災厄餓死鬼
# 生成一個村民，並且讓王去打他


summon minecraft:villager ~ ~-3 ~ {Tags:["poison_starver.villager"],Team:"boss.no_collide",NoAI:1b,Silent:1b,active_effects:[{id:"invisibility",duration:-1,show_particles:false},{id:"resistance",duration:-1,amplifier:4b,show_particles:false}]}
execute as @e[type=minecraft:villager,tag=poison_starver.villager] run tp @s ^ ^ ^1
# tp 是為了抵銷隱形的閃一下

function boss:poison_starver/skill6/villager_attack