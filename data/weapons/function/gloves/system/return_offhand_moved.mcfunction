function general:player_data/select
execute unless data storage general:player_data Data[{selected:1b}].stored_offhand.id run return 0
execute unless predicate weapons:gloves/system/off_glove run return run function weapons:gloves/system/swap_dropped
data modify storage weapons:gloves temp set value {target_id:"minecraft:arrow",target_custom_data:{gloves:{}},item_id:"",item_count:0,item_components:{}}
data modify storage weapons:gloves temp.item_id set from storage general:player_data Data[{selected:1b}].stored_offhand.id
data modify storage weapons:gloves temp.item_count set from storage general:player_data Data[{selected:1b}].stored_offhand.count
data modify storage weapons:gloves temp.item_components set from storage general:player_data Data[{selected:1b}].stored_offhand.components
scoreboard players set @s weapons.gloves.suppressing 1
execute store success score $temp weapons run function general:utils/swap_item with storage weapons:gloves temp
scoreboard players set @s weapons.gloves.suppressing 0
execute if score $temp weapons matches 0 run function weapons:gloves/system/spawn_offhand
data modify storage general:player_data Data[{selected:1b}].stored_offhand set value {}
