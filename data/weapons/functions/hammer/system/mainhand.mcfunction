data modify storage general:utils output.mainhand.Slot set value 0b
data remove block 0 16 0 Items[]
data modify block 0 16 0 Items append from storage general:utils output.mainhand
item replace entity @s weapon.mainhand from block 0 16 0 container.0