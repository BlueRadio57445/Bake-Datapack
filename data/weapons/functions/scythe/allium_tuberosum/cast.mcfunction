execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[type=#mobs,dx=0,dy=0,dz=0,tag=!self] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] run tag @s add this
execute positioned ^ ^ ^0.1 as @e[tag=this] run function weapons:scythe/allium_tuberosum/hit
execute if entity @s[distance=..6] unless entity @e[type=#mobs,tag=this] if block ~ ~ ~ air positioned ^ ^ ^0.1 run function weapons:scythe/allium_tuberosum/cast
tag @e[tag=this] remove this