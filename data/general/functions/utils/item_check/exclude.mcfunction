execute store success score $exclude general.utils run data modify storage general:utils Items[0].tag merge from storage general:utils Temp[0]
data remove storage general:utils Temp[0]
execute if score $exclude general.utils matches 1 if data storage general:utils Temp[] run function general:utils/item_check/exclude
