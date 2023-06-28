advancement revoke @s only items:gadget/magnet
tag @s add items.this
execute at @s positioned ~ ~1 ~ as @e[type=minecraft:item,distance=..15] run function items:gadget/magnet/motion
tag @s remove items.this
