scoreboard players reset @a[scores={weapons.sword.pirate_sword=1..},predicate=!weapons:sword/pirate_sword/selected] weapons.sword.pirate_sword
execute as @a[predicate=weapons:sword/pirate_sword/selected,scores={weapons.sword.pirate_sword=1..}] at @s run function weapons:sword/pirate_sword/cast

