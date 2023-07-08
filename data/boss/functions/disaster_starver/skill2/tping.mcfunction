# 這是用schedule遞迴的函數
# 一樣會自己停下來

execute at @e[tag=disaster_starver.tping] run particle minecraft:dust 0 0 0 1.3 ~ ~1 ~ 0 0 0 0 10 force
execute at @e[tag=disaster_starver.tping] run particle minecraft:dust 0.788 0.788 0.000 1 ~ ~1 ~ 0 0 0 0 10 force
effect give @e[tag=disaster_starver.tping] invisibility 1 1 true
execute as @e[tag=disaster_starver.tping] at @s facing entity @e[tag=disaster_starver.chosen,limit=1] feet run tp @s ^ ^ ^0.5
execute as @e[tag=disaster_starver.tping] at @s if entity @e[tag=disaster_starver.chosen,distance=..0.6] run function boss:disaster_starver/skill2/end

execute if entity @e[tag=disaster_starver.tping] run schedule function boss:disaster_starver/skill2/tping 1t