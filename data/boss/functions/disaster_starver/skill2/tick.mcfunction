# 執行者、執行位置是災厄餓死鬼
particle minecraft:dust 0 0 0 1.3 ~ ~1 ~ 0 0 0 0 10 force
particle minecraft:dust 0.788 0.788 0.000 1 ~ ~1 ~ 0 0 0 0 10 force
effect give @s invisibility 1 1 true
execute facing entity @e[tag=disaster_starver.random,limit=1] feet run tp @s ^ ^ ^0.5
execute if entity @e[tag=disaster_starver.random,distance=..1.1] run function boss:disaster_starver/skill2/end