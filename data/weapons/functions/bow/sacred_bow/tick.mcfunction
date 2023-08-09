scoreboard players reset @a[predicate=!weapons:bow/sacred_bow/selected] weapons.sacred_bow.draw_time

execute as @a[predicate=weapons:bow/sacred_bow/selected,scores={weapons.sacred_bow.draw_time=100..}] at @s anchored eyes run particle minecraft:enchant ^-.2 ^ ^.5 .1 .1 .1 0 2