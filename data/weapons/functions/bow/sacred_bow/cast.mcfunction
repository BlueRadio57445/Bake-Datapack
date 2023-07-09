execute if score @s weapons.sacred_bow.dwar_time matches 30..59 as @e[sort=nearest,limit=1,type=minecraft:arrow] run data modify entity @s damage set value 3.0d
execute if score @s weapons.sacred_bow.dwar_time matches 60..79 as @e[sort=nearest,limit=1,type=minecraft:arrow] run data modify entity @s damage set value 6.0d
execute if score @s weapons.sacred_bow.dwar_time matches 80..99 as @e[sort=nearest,limit=1,type=minecraft:arrow] run data modify entity @s damage set value 8.0d
execute if score @s weapons.sacred_bow.dwar_time matches 80..100 as @e[sort=nearest,limit=1,type=minecraft:arrow] run data modify entity @s damage set value 9.0d
execute if score @s weapons.sacred_bow.dwar_time matches 100.. as @e[sort=nearest,limit=1,type=minecraft:arrow] run data modify entity @s damage set value 10.0d





scoreboard players reset @s weapons.sacred_bow.dwar_time
scoreboard players reset @s weapons.sacred_bow.shoot