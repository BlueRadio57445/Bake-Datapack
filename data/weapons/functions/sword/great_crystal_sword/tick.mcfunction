execute as @e[tag=weapons.great_crystal_sword.remove_armor,predicate=weapons:sword/rainbow_crystal_sword/hurt] at @s run function weapons:sword/great_crystal_sword/return_armor
execute as @e[predicate=weapons:sword/rainbow_crystal_sword/hurt] at @s on attacker if predicate weapons:sword/great_crystal_sword/30_percent if predicate weapons:sword/great_crystal_sword/selected as @e[sort=nearest,limit=1] run function weapons:sword/great_crystal_sword/cast