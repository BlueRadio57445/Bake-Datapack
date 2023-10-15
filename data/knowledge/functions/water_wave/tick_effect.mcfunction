# 執行者、執行位置是海浪的位置
tp @s ^ ^ ^0.5

particle minecraft:falling_dripstone_water ^ ^1 ^2 0.4 0.2 0.4 0.1 40
particle minecraft:falling_dripstone_water ^1 ^1 ^2 0.4 0.2 0.4 0.1 40
particle minecraft:falling_dripstone_water ^-1 ^1 ^2 0.4 0.2 0.4 0.1 40
particle minecraft:falling_dripstone_water ^2 ^1 ^2 0.4 0.2 0.4 0.1 40
particle minecraft:falling_dripstone_water ^-2 ^1 ^2 0.4 0.2 0.4 0.1 40

particle minecraft:snowflake ^ ^1 ^2 0.2 0.2 0.2 0.01 4
particle minecraft:snowflake ^1 ^1 ^2 0.2 0.2 0.2 0.01 4
particle minecraft:snowflake ^-1 ^1 ^2 0.2 0.2 0.2 0.01 4
particle minecraft:snowflake ^2 ^1 ^2 0.2 0.2 0.2 0.01 4
particle minecraft:snowflake ^-2 ^1 ^2 0.2 0.2 0.2 0.01 4

execute positioned ~-0.4 ~-1.5 ~-0.4 as @e[type=#mobs,dx=0,dy=1,dz=0] run function knowledge:water_wave/push
execute positioned ^1 ^ ^ positioned ~-0.4 ~-1.5 ~-0.4 as @e[type=#mobs,dx=0,dy=1,dz=0] run function knowledge:water_wave/push
execute positioned ^-1 ^ ^ positioned ~-0.4 ~-1.5 ~-0.4 as @e[type=#mobs,dx=0,dy=1,dz=0] run function knowledge:water_wave/push
execute positioned ^2 ^ ^ positioned ~-0.4 ~-1.5 ~-0.4 as @e[type=#mobs,dx=0,dy=1,dz=0] run function knowledge:water_wave/push
execute positioned ^-2 ^ ^ positioned ~-0.4 ~-1.5 ~-0.4 as @e[type=#mobs,dx=0,dy=1,dz=0] run function knowledge:water_wave/push
