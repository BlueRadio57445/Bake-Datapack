execute store result score $stack general.utils run data get storage general:utils Items[0].Count
scoreboard players operation $count general.utils += $stack general.utils
execute if score $count general.utils >= $target general.utils run scoreboard players set $output general.utils 1
execute if score $take general.utils matches 1 run function general:utils/item_check/slot_record
