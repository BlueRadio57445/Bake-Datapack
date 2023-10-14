playsound minecraft:item.trident.throw master @a[distance=..15] ^ ^ ^1 1 1.3
tag @s add this
execute as @e[type=item_display,tag=air_feather,distance=..30] positioned ~ ~1 ~ run function knowledge:air_cut/recursion_effect
tag @s remove this