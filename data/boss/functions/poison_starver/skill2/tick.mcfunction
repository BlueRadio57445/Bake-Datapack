# 執行者、執行位置是嘔噁餓死鬼
particle glow_squid_ink ~ ~1 ~ 0 0 0 0.1 10 force
effect give @s invisibility 1 1 true
execute facing entity @e[tag=poison_starver.random,limit=1] feet run tp @s ^ ^ ^0.5
execute if entity @e[tag=poison_starver.random,distance=..1.1] run function boss:poison_starver/skill2/end