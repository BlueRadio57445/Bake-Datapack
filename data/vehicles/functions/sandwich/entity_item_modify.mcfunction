loot replace block 0 16 0 container.1 loot items:gadget/sandwich/bag_stuffed
data remove entity @s Item.tag.EntityTag.Item.tag.EntityTag.Items[]
data modify block 0 16 0 Items[{Slot:1b}].tag.EntityTag merge from entity @s Item.tag.EntityTag
data modify entity @s Item.tag set from block 0 16 0 Items[{Slot:1b}].tag
data remove block 0 16 0 Items[]
data modify entity @s Item.tag.EntityTag.Item.tag.EntityTag.Health set value 1.0f
scoreboard players operation $time vehicles.cooldown = $gametime general.utils
scoreboard players operation $time vehicles.cooldown += $sandwich_death_cooldown vehicles.const
data modify entity @s Item.tag.cooldown set value {mode:"item",command:"function vehicles:sandwich/cooldown_ended"}
execute store result entity @s Item.tag.cooldown.length int 1 run scoreboard players get $sandwich_death_cooldown vehicles.const
execute store result entity @s Item.tag.cooldown.target_time int 1 run scoreboard players get $time vehicles.cooldown
