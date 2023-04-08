execute store result score $slot quest.item_check run data get storage quest_system:item_check Slot_Record[0].Slot
execute store result score $stack quest.item_check run data get storage quest_system:item_check Slot_Record[0].Count
data remove storage quest_system:item_check Slot_Record[0]
execute unless data storage quest_system:item_check Slot_Record[] run function quest_system:item_check/reduce
execute if score $slot quest.item_check matches 0 run item modify entity @s container.0 quest_system:take_count
execute if score $slot quest.item_check matches 1 run item modify entity @s container.1 quest_system:take_count
execute if score $slot quest.item_check matches 2 run item modify entity @s container.2 quest_system:take_count
execute if score $slot quest.item_check matches 3 run item modify entity @s container.3 quest_system:take_count
execute if score $slot quest.item_check matches 4 run item modify entity @s container.4 quest_system:take_count
execute if score $slot quest.item_check matches 5 run item modify entity @s container.5 quest_system:take_count
execute if score $slot quest.item_check matches 6 run item modify entity @s container.6 quest_system:take_count
execute if score $slot quest.item_check matches 7 run item modify entity @s container.7 quest_system:take_count
execute if score $slot quest.item_check matches 8 run item modify entity @s container.8 quest_system:take_count
execute if score $slot quest.item_check matches 9 run item modify entity @s container.9 quest_system:take_count
execute if score $slot quest.item_check matches 10 run item modify entity @s container.10 quest_system:take_count
execute if score $slot quest.item_check matches 11 run item modify entity @s container.11 quest_system:take_count
execute if score $slot quest.item_check matches 12 run item modify entity @s container.12 quest_system:take_count
execute if score $slot quest.item_check matches 13 run item modify entity @s container.13 quest_system:take_count
execute if score $slot quest.item_check matches 14 run item modify entity @s container.14 quest_system:take_count
execute if score $slot quest.item_check matches 15 run item modify entity @s container.15 quest_system:take_count
execute if score $slot quest.item_check matches 16 run item modify entity @s container.16 quest_system:take_count
execute if score $slot quest.item_check matches 17 run item modify entity @s container.17 quest_system:take_count
execute if score $slot quest.item_check matches 18 run item modify entity @s container.18 quest_system:take_count
execute if score $slot quest.item_check matches 19 run item modify entity @s container.19 quest_system:take_count
execute if score $slot quest.item_check matches 20 run item modify entity @s container.20 quest_system:take_count
execute if score $slot quest.item_check matches 21 run item modify entity @s container.21 quest_system:take_count
execute if score $slot quest.item_check matches 22 run item modify entity @s container.22 quest_system:take_count
execute if score $slot quest.item_check matches 23 run item modify entity @s container.23 quest_system:take_count
execute if score $slot quest.item_check matches 24 run item modify entity @s container.24 quest_system:take_count
execute if score $slot quest.item_check matches 25 run item modify entity @s container.25 quest_system:take_count
execute if score $slot quest.item_check matches 26 run item modify entity @s container.26 quest_system:take_count
execute if score $slot quest.item_check matches 27 run item modify entity @s container.27 quest_system:take_count
execute if score $slot quest.item_check matches 28 run item modify entity @s container.28 quest_system:take_count
execute if score $slot quest.item_check matches 29 run item modify entity @s container.29 quest_system:take_count
execute if score $slot quest.item_check matches 30 run item modify entity @s container.30 quest_system:take_count
execute if score $slot quest.item_check matches 31 run item modify entity @s container.31 quest_system:take_count
execute if score $slot quest.item_check matches 32 run item modify entity @s container.32 quest_system:take_count
execute if score $slot quest.item_check matches 33 run item modify entity @s container.33 quest_system:take_count
execute if score $slot quest.item_check matches 34 run item modify entity @s container.34 quest_system:take_count
execute if score $slot quest.item_check matches 35 run item modify entity @s container.35 quest_system:take_count
execute if data storage quest_system:item_check Slot_Record[] run function quest_system:item_check/take
