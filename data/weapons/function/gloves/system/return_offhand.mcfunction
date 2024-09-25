function general:player_data/select
execute unless data storage general:player_data Data[{selected:1b}].stored_offhand.id run return 0
execute if items entity @s weapon.offhand * run return run function weapons:gloves/system/spawn_offhand
data remove block 0 16 0 Items[]
data modify block 0 16 0 Items append from storage general:player_data Data[{selected:1b}].stored_offhand
data modify storage general:player_data Data[{selected:1b}].stored_offhand set value {}
item replace entity @s weapon.offhand from block 0 16 0 container.0
data remove block 0 16 0 Items[]
