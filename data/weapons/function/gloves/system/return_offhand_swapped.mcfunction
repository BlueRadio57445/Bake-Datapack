function general:player_data/select
execute unless data storage general:player_data Data[{selected:1b}].stored_offhand.id run return 0
execute if items entity @s weapon.mainhand * run return run function weapons:gloves/system/spawn_offhand
data remove block 0 16 0 Items[]
data modify block 0 16 0 Items append from storage general:player_data Data[{selected:1b}].stored_offhand
data modify storage general:player_data Data[{selected:1b}].stored_offhand set value {}
item replace entity @s weapon.mainhand from block 0 16 0 container.0
execute if items block 0 16 0 container.0 minecraft:crossbow[minecraft:custom_data~{gloves:{}}] run function weapons:gloves/system/glove_updated
data remove block 0 16 0 Items[]
