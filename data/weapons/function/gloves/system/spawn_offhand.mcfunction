data modify block 0 16 0 Items append from storage general:player_data Data[{selected:1b}].stored_offhand
execute at @s run loot spawn ~ ~ ~ mine 0 16 0 minecraft:netherite_pickaxe[minecraft:custom_data={drop_contents:{}}]
data modify storage general:player_data Data[{selected:1b}].stored_offhand set value {}
