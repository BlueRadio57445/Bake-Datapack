scoreboard players reset @s general.used_carrot_stick
scoreboard players reset @s general.used_fungus_stick

data modify storage general:utils input.command set value ""
execute if items entity @s weapon.mainhand #minecraft:right_click_sticks run data modify storage general:utils input.command set from entity @s SelectedItem.components."minecraft:custom_data".on_click
execute unless items entity @s weapon.mainhand #minecraft:right_click_sticks if items entity @s weapon.offhand #minecraft:right_click_sticks run data modify storage general:utils input.command set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".on_click
execute at @s run function general:utils/execute with storage general:utils input
