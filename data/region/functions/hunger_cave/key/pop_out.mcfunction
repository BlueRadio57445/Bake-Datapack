summon item ~ ~ ~ {Tags:["this"],Item:{id:"minecraft:stone_button",Count:1b},PickupDelay:20s,Motion:[0.0d,0.2d,0.0d]}
data modify entity @e[type=item,tag=this,distance=..1,limit=1] Item set from entity @s Item
data modify entity @s Item.id set value "minecraft:air"
tag @e[type=item,tag=this] remove this