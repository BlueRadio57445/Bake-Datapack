# 執行者、執行位置是水漩渦
execute positioned ~ ~0.5 ~ run function knowledge:water_swirl/swirl_particle1

playsound minecraft:weather.rain master @a[distance=..10] ~ ~ ~

execute as @e[type=#mobs,distance=0.1..3] facing entity @s feet rotated ~180 ~ positioned as @s run tp @s ^ ^ ^0.1

execute as @e[distance=..1] run damage @s 1 minecraft:drown

scoreboard players remove @s knowledge.water_swirl 1
kill @s[scores={knowledge.water_swirl=..0}]