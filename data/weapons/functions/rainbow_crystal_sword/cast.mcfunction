playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 1000 1

advancement revoke @s only weapons:sword/rainbow_crystal_sword/attack
execute at @s anchored eyes positioned ^ ^ ^2 as @e[distance=..3,type=#mobs,limit=1] if predicate weapons:sword/rainbow_crystal_sword/hurt run data merge entity @s {Fire:200s}
execute at @s anchored eyes positioned ^ ^ ^2 as @e[distance=..3,type=#mobs,limit=1] if predicate weapons:sword/rainbow_crystal_sword/hurt run effect give @s slowness 10 0
execute at @s anchored eyes positioned ^ ^ ^2 as @e[distance=..3,type=#mobs,limit=1] if predicate weapons:sword/rainbow_crystal_sword/hurt run effect give @s glowing 10 0


