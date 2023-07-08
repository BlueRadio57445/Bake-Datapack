execute store success score $diff general.utils run data modify storage general:utils Items[0].id set from storage general:utils Item.id
execute if score $diff general.utils matches 0 unless data storage general:utils Items[0].tag if data storage bpg:general.utils Item.tag run scoreboard players set $diff general.utils 1
execute if score $diff general.utils matches 0 if data storage general:utils Item.tag store success score $diff general.utils run data modify storage general:utils Items[0].tag merge from storage general:utils Item.tag
execute if score $diff general.utils matches 0 if data storage general:utils Items[0].tag if data storage general:utils Item.exclude_tags[] run data modify storage general:utils Temp set from storage general:utils Item.exclude_tags
execute if score $diff general.utils matches 0 if data storage general:utils Temp[] run function general:utils/item_check/exclude
execute if score $exclude general.utils matches 0 run scoreboard players set $diff general.utils 1
execute if score $diff general.utils matches 0 run function general:utils/item_check/count
data remove storage general:utils Items[0]
execute if score $output general.utils matches 0 if data storage general:utils Items[] run function general:utils/item_check/loop
