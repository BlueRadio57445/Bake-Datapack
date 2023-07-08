scoreboard players reset * general.utils
scoreboard players set $output general.utils 0
scoreboard players set $count general.utils 0
execute store result score $target general.utils run data get storage general:utils Item.Count
execute store result score $take general.utils run data get storage general:utils Item.Take
execute if score $target general.utils matches 0 run scoreboard players set $target general.utils 1
data modify storage general:utils Items set from entity @s Inventory
execute if data storage general:utils Item.id if data storage general:utils Items[] run function general:utils/item_check/loop
execute if score $output general.utils matches 1 if score $take general.utils matches 1 run function general:utils/item_check/take
data remove storage general:utils Item
data remove storage general:utils Items
data remove storage general:utils Temp
data remove storage general:utils Slot_Record
