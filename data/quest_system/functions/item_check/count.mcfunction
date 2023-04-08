execute store result score $stack quest.item_check run data get storage quest_system:item_check Items[0].Count
scoreboard players operation $count quest.item_check += $stack quest.item_check
execute if score $count quest.item_check >= $target quest.item_check run scoreboard players set $output quest.item_check 1
execute if score $take quest.item_check matches 1 run function quest_system:item_check/slot_record
