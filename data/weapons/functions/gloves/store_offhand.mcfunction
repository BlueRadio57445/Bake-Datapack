item replace block 0 16 0 container.0 from entity @s weapon.offhand
data modify storage gloves offhand set from block 0 16 0 Items[0]
item replace entity @s weapon.offhand with arrow{gloves:2b} 2
item modify entity @s weapon.offhand weapons:gloves/copy_offhand