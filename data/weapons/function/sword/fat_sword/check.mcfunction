# 由 general:utils/hunger_changed 及 general:utils/selected_item_changed 觸發
execute if score @s general.player.food matches 20.. if data entity @s SelectedItem.components{"minecraft:custom_model_data":0} run function weapons:sword/fat_sword/strong
execute unless score @s general.player.food matches 20.. if data entity @s SelectedItem.components{"minecraft:custom_model_data":3000} run function weapons:sword/fat_sword/weak
