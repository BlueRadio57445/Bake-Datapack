scoreboard players reset * quest.item_check
scoreboard players set $output quest.item_check 0
scoreboard players set $count quest.item_check 0
execute store result score $target quest.item_check run data get storage quest_system:item_check Item.Count
execute store result score $take quest.item_check run data get storage quest_system:item_check Item.Take
execute if score $target quest.item_check matches 0 run scoreboard players set $target quest.item_check 1
data modify storage quest_system:item_check Items set from entity @s Inventory
execute if data storage quest_system:item_check Item.id if data storage quest_system:item_check Items[] run function quest_system:item_check/loop
execute if score $output quest.item_check matches 1 if score $take quest.item_check matches 1 run function quest_system:item_check/take
data remove storage quest_system:item_check Item
data remove storage quest_system:item_check Items
data remove storage quest_system:item_check Temp
data remove storage quest_system:item_check Slot_Record
