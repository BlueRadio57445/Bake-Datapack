function general:player_data/select
data remove block 0 16 0 Items[]
execute if data storage general:player_data Data[{selected:1b}].stored_offhand.id run function weapons:gloves/system/spawn_offhand
item replace block 0 16 0 container.0 from entity @s weapon.offhand
data modify storage general:player_data Data[{selected:1b}].stored_offhand set from block 0 16 0 Items[0]
data remove block 0 16 0 Items[]
