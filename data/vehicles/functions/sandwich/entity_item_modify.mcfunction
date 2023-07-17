loot replace block 0 16 0 container.1 loot items:gadget/sandwich/bag_stuffed
data remove entity @s Item.tag.EntityTag.Items[]
data modify block 0 16 0 Items[{Slot:1b}].tag.EntityTag merge from entity @s Item.tag.EntityTag
data modify entity @s Item.tag set from block 0 16 0 Items[{Slot:1b}].tag
data remove block 0 16 0 Items[]
execute store result score $time vehicles.cooldown run time query gametime
scoreboard players operation $time vehicles.cooldown += $sandwich_death_cooldown vehicles.const
execute store result entity @s Item.tag.cooldown int 1 run scoreboard players get $time vehicles.cooldown
