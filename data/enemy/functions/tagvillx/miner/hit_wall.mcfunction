# 執行者、執行位置是鉤子
particle campfire_cosy_smoke ~ ~ ~ .3 .3 .3 .1 15
playsound minecraft:block.anvil.land master @a[distance=..30] ~ ~ ~ 1 2

execute on origin at @s run particle smoke ~ ~1 ~ .5 .5 .5 .1 100
execute at @s on origin run tp @s ^ ^ ^-1.5

kill @s 





