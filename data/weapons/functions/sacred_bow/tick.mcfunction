execute as @a unless predicate weapons:sacred_bow/selected run scoreboard players reset @s weapons.sacred_bow.dwar_time
execute as @a unless predicate weapons:sacred_bow/selected run scoreboard players reset @s weapons.sacred_bow.shoot

execute as @e[type=minecraft:arrow] unless predicate weapons:sacred_bow/in_ground if predicate weapons:sacred_bow/has_been_shot on origin if predicate weapons:sacred_bow/selected if score @s weapons.sacred_bow.shoot matches 1.. run function weapons:sacred_bow/cast

execute as @a if predicate weapons:sacred_bow/selected_main if score @s weapons.sacred_bow.dwar_time matches 100.. at @s anchored eyes run particle minecraft:enchant ^-.2 ^ ^.5 .1 .1 .1 0 2
execute as @a if predicate weapons:sacred_bow/selected_off if score @s weapons.sacred_bow.dwar_time matches 100.. at @s anchored eyes run particle minecraft:enchant ^.2 ^ ^.5 .1 .1 .1 0 2