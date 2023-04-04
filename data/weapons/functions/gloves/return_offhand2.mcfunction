data remove block 0 16 0 Items
data modify block 0 16 0 Items append from entity @s SelectedItem.tag.offhand
item replace entity @s weapon.mainhand from block 0 16 0 container.0
scoreboard players set @s weapons.gloves.holding 0
