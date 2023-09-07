scoreboard players reset @s general.used_carrot_stick
scoreboard players reset @s general.used_fungus_stick

data modify storage general:utils input.command set value ""
execute if predicate general:utils/holding_sticks_mainhand run data modify storage general:utils input.command set from entity @s SelectedItem.tag.on_click
execute unless predicate general:utils/holding_sticks_mainhand if predicate general:utils/holding_sticks_offhand run data modify storage general:utils input.command set from entity @s Inventory[{Slot:-106b}].tag.on_click
execute at @s run function general:utils/execute with storage general:utils input
