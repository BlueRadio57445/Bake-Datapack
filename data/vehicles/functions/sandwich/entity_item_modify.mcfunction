execute store result score $time vehicles.cooldown run time query gametime
scoreboard players operation $time vehicles.cooldown += $sandwich_death_cooldown vehicles.const
execute store result entity @s Item.tag.cooldown int 1 run scoreboard players get $time vehicles.cooldown
execute store result entity @s Item.tag.cooldown.EntityTag int 1 run scoreboard players get $time vehicles.cooldown
data remove entity @s Item.tag.sandwich.unfolded
data modify entity @s Item.tag.EntityTag.ForcedAge set value -1
data modify entity @s Item.tag.EntityTag.Items set value [{id:"minecraft:donkey_spawn_egg",tag:{sandwich:{bag:1b,unfolded:1b}},Count:1b,Slot:16b}]
