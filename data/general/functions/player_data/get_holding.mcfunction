function general:player_data/select
execute store result score $selectedSlot general.util run data get entity @s SelectedItemSlot
data modify storage general:player_data output.mainhand set value {}
data modify storage general:player_data output.offhand set value {}
execute if score $selectedSlot general.util matches 0 run data modify storage general:player_data output.mainhand set from storage general:player_data Data[{selected:1b}].Inventory[{Slot:0b}]
execute if score $selectedSlot general.util matches 1 run data modify storage general:player_data output.mainhand set from storage general:player_data Data[{selected:1b}].Inventory[{Slot:1b}]
execute if score $selectedSlot general.util matches 2 run data modify storage general:player_data output.mainhand set from storage general:player_data Data[{selected:1b}].Inventory[{Slot:2b}]
execute if score $selectedSlot general.util matches 3 run data modify storage general:player_data output.mainhand set from storage general:player_data Data[{selected:1b}].Inventory[{Slot:3b}]
execute if score $selectedSlot general.util matches 4 run data modify storage general:player_data output.mainhand set from storage general:player_data Data[{selected:1b}].Inventory[{Slot:4b}]
execute if score $selectedSlot general.util matches 5 run data modify storage general:player_data output.mainhand set from storage general:player_data Data[{selected:1b}].Inventory[{Slot:5b}]
execute if score $selectedSlot general.util matches 6 run data modify storage general:player_data output.mainhand set from storage general:player_data Data[{selected:1b}].Inventory[{Slot:6b}]
execute if score $selectedSlot general.util matches 7 run data modify storage general:player_data output.mainhand set from storage general:player_data Data[{selected:1b}].Inventory[{Slot:7b}]
execute if score $selectedSlot general.util matches 8 run data modify storage general:player_data output.mainhand set from storage general:player_data Data[{selected:1b}].Inventory[{Slot:8b}]
data modify storage general:player_data output.offhand set from storage general:player_data Data[{selected:1b}].Inventory[{Slot:-106b}]
