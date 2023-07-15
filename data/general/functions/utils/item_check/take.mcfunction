execute store result score $slot general.utils run data get storage general:utils Slot_Record[0].Slot
execute store result score $stack general.utils run data get storage general:utils Slot_Record[0].Count
data remove storage general:utils Slot_Record[0]
execute unless data storage general:utils Slot_Record[] run function general:utils/item_check/reduce
execute if score $slot general.utils matches 0 run item modify entity @s container.0 general:utils/take_count
execute if score $slot general.utils matches 1 run item modify entity @s container.1 general:utils/take_count
execute if score $slot general.utils matches 2 run item modify entity @s container.2 general:utils/take_count
execute if score $slot general.utils matches 3 run item modify entity @s container.3 general:utils/take_count
execute if score $slot general.utils matches 4 run item modify entity @s container.4 general:utils/take_count
execute if score $slot general.utils matches 5 run item modify entity @s container.5 general:utils/take_count
execute if score $slot general.utils matches 6 run item modify entity @s container.6 general:utils/take_count
execute if score $slot general.utils matches 7 run item modify entity @s container.7 general:utils/take_count
execute if score $slot general.utils matches 8 run item modify entity @s container.8 general:utils/take_count
execute if score $slot general.utils matches 9 run item modify entity @s container.9 general:utils/take_count
execute if score $slot general.utils matches 10 run item modify entity @s container.10 general:utils/take_count
execute if score $slot general.utils matches 11 run item modify entity @s container.11 general:utils/take_count
execute if score $slot general.utils matches 12 run item modify entity @s container.12 general:utils/take_count
execute if score $slot general.utils matches 13 run item modify entity @s container.13 general:utils/take_count
execute if score $slot general.utils matches 14 run item modify entity @s container.14 general:utils/take_count
execute if score $slot general.utils matches 15 run item modify entity @s container.15 general:utils/take_count
execute if score $slot general.utils matches 16 run item modify entity @s container.16 general:utils/take_count
execute if score $slot general.utils matches 17 run item modify entity @s container.17 general:utils/take_count
execute if score $slot general.utils matches 18 run item modify entity @s container.18 general:utils/take_count
execute if score $slot general.utils matches 19 run item modify entity @s container.19 general:utils/take_count
execute if score $slot general.utils matches 20 run item modify entity @s container.20 general:utils/take_count
execute if score $slot general.utils matches 21 run item modify entity @s container.21 general:utils/take_count
execute if score $slot general.utils matches 22 run item modify entity @s container.22 general:utils/take_count
execute if score $slot general.utils matches 23 run item modify entity @s container.23 general:utils/take_count
execute if score $slot general.utils matches 24 run item modify entity @s container.24 general:utils/take_count
execute if score $slot general.utils matches 25 run item modify entity @s container.25 general:utils/take_count
execute if score $slot general.utils matches 26 run item modify entity @s container.26 general:utils/take_count
execute if score $slot general.utils matches 27 run item modify entity @s container.27 general:utils/take_count
execute if score $slot general.utils matches 28 run item modify entity @s container.28 general:utils/take_count
execute if score $slot general.utils matches 29 run item modify entity @s container.29 general:utils/take_count
execute if score $slot general.utils matches 30 run item modify entity @s container.30 general:utils/take_count
execute if score $slot general.utils matches 31 run item modify entity @s container.31 general:utils/take_count
execute if score $slot general.utils matches 32 run item modify entity @s container.32 general:utils/take_count
execute if score $slot general.utils matches 33 run item modify entity @s container.33 general:utils/take_count
execute if score $slot general.utils matches 34 run item modify entity @s container.34 general:utils/take_count
execute if score $slot general.utils matches 35 run item modify entity @s container.35 general:utils/take_count
execute if data storage general:utils Slot_Record[] run function general:utils/item_check/take
