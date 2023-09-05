# 執行者，執行位置是箭矢

execute on passengers run data modify storage weapons:bow bouncing_bow.Motion set from entity @s data.Motion

execute unless block ~0.1 ~ ~ #no_collision store result storage weapons:bow bouncing_bow.Motion[0] double 0.001 run data get storage weapons:bow bouncing_bow.Motion[0] -1000
execute unless block ~-0.1 ~ ~ #no_collision store result storage weapons:bow bouncing_bow.Motion[0] double 0.001 run data get storage weapons:bow bouncing_bow.Motion[0] -1000

execute unless block ~ ~0.1 ~ #no_collision store result storage weapons:bow bouncing_bow.Motion[1] double 0.001 run data get storage weapons:bow bouncing_bow.Motion[1] -1000
execute unless block ~ ~-0.1 ~ #no_collision store result storage weapons:bow bouncing_bow.Motion[1] double 0.001 run data get storage weapons:bow bouncing_bow.Motion[1] -1000

execute unless block ~ ~ ~0.1 #no_collision store result storage weapons:bow bouncing_bow.Motion[2] double 0.001 run data get storage weapons:bow bouncing_bow.Motion[2] -1000
execute unless block ~ ~ ~-0.1 #no_collision store result storage weapons:bow bouncing_bow.Motion[2] double 0.001 run data get storage weapons:bow bouncing_bow.Motion[2] -1000


data modify entity @s {} merge from storage weapons:bow bouncing_bow

scoreboard players remove @s weapons.bow.bounce_times 1
execute as @s[scores={weapons.bow.bounce_times=0}] on passengers run kill @s
tag @s[scores={weapons.bow.bounce_times=0}] remove arrow.bouncing_bow
