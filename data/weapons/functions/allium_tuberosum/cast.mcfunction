advancement revoke @s only weapons:allium_tuberosum/attack

execute at @s anchored eyes positioned ^ ^ ^1.5 positioned ~-1 ~ ~-1 if entity @e[type=#mobs,dx=0,dy=0,dz=0] positioned ~1 ~-2.45 ~1 as @e[type=#mobs,distance=..1] run damage @s 18 arrow 
execute at @s anchored eyes positioned ^ ^ ^1.5 positioned ~-1 ~ ~-1 if entity @e[type=#mobs,dx=0,dy=0,dz=0] positioned ~1 ~-2.45 ~1 as @e[type=#mobs,distance=..1] at @s run particle block redstone_block ~ ~2 ~ .3 .3 .3 0 40



