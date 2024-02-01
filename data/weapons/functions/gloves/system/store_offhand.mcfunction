function general:player_data/select
execute if data storage general:player_data Data[{selected:1b}].storedOffhand.id run function weapons:gloves/system/return_offhand3
data modify block 0 16 0 Items set value []
item replace block 0 16 0 container.0 from entity @s weapon.offhand
data modify storage general:player_data Data[{selected:1b}].storedOffhand set from block 0 16 0 Items[0]
data modify block 0 16 0 Items set value []
