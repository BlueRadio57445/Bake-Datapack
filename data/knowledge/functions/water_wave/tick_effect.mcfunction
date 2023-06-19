# 執行者、執行位置是海浪的位置
tp @s ^ ^ ^0.5
scoreboard players remove @s knowledge.water_wave 1
kill @s[scores={knowledge.water_wave=..0}]

particle minecraft:falling_dripstone_water ^ ^1 ^2 0.4 0.2 0.4 0.1 40
particle minecraft:falling_dripstone_water ^1 ^1 ^2 0.4 0.2 0.4 0.1 40
particle minecraft:falling_dripstone_water ^-1 ^1 ^2 0.4 0.2 0.4 0.1 40
particle minecraft:falling_dripstone_water ^2 ^1 ^2 0.4 0.2 0.4 0.1 40
particle minecraft:falling_dripstone_water ^-2 ^1 ^2 0.4 0.2 0.4 0.1 40

particle minecraft:snowflake ^ ^1 ^2 0.2 0.2 0.2 0.01 2
particle minecraft:snowflake ^1 ^1 ^2 0.2 0.2 0.2 0.01 2
particle minecraft:snowflake ^-1 ^1 ^2 0.2 0.2 0.2 0.01 2
particle minecraft:snowflake ^2 ^1 ^2 0.2 0.2 0.2 0.01 2
particle minecraft:snowflake ^-2 ^1 ^2 0.2 0.2 0.2 0.01 2

execute positioned ~-0.4 ~-1.5 ~-0.4 as @e[type=#mobs,dx=0,dy=1,dz=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0,dy=1,dz=0] positioned as @s run tp @s ^ ^ ^0.5
execute positioned ^1 ^ ^ positioned ~-0.4 ~-1.5 ~-0.4 as @e[type=#mobs,dx=0,dy=1,dz=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0,dy=1,dz=0] positioned as @s run tp @s ^ ^ ^0.5
execute positioned ^-1 ^ ^ positioned ~-0.4 ~-1.5 ~-0.4 as @e[type=#mobs,dx=0,dy=1,dz=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0,dy=1,dz=0] positioned as @s run tp @s ^ ^ ^0.5
execute positioned ^2 ^ ^ positioned ~-0.4 ~-1.5 ~-0.4 as @e[type=#mobs,dx=0,dy=1,dz=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0,dy=1,dz=0] positioned as @s run tp @s ^ ^ ^0.5
execute positioned ^-2 ^ ^ positioned ~-0.4 ~-1.5 ~-0.4 as @e[type=#mobs,dx=0,dy=1,dz=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0,dy=1,dz=0] positioned as @s run tp @s ^ ^ ^0.5
