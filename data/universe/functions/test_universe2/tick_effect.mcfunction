effect give @s night_vision 10 0 true
effect give @s haste 1 0 true

# 苦力怕防爆，晚點補
#execute as @e[distance=..7,type=creeper] run data merge entity @s {Fuse:1000s}