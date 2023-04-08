execute store success score $exclude quest.item_check run data modify storage quest_system:item_check Items[0].tag merge from storage quest_system:item_check Temp[0]
data remove storage quest_system:item_check Temp[0]
execute if score $exclude quest.item_check matches 1 if data storage quest_system:item_check Temp[] run function quest_system:item_check/exclude
