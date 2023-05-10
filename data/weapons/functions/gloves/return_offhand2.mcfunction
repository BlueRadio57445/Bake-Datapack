function general:player_data/select
data remove block 0 16 0 Items[]
data modify block 0 16 0 Items append from storage general:player_data Data[{selected:1b}].storedOffhand
data modify storage general:player_data Data[{selected:1b}].storedOffhand set value {}
item replace entity @s weapon.mainhand from block 0 16 0 container.0
scoreboard players set @s weapons.gloves.holding 0
