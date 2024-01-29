data modify storage general:utils output.offhand.Slot set value 0b
data remove block 0 16 0 Items[]
data modify block 0 16 0 Items append from storage general:utils output.offhand
item replace entity @s weapon.offhand from block 0 16 0 container.0