scoreboard players set $temp weapons 0
execute at @s as @e[limit=1,type=minecraft:item,distance=0..10,predicate=weapons:gloves/system/off_glove] store result score $temp weapons run data modify entity @s Item set from storage general:player_data Data[{selected:1b}].stored_offhand
kill @e[type=minecraft:item,predicate=weapons:gloves/system/off_glove]
execute if score $temp weapons matches 0 run function weapons:gloves/system/spawn_offhand
data modify storage general:player_data Data[{selected:1b}].stored_offhand set value {}
