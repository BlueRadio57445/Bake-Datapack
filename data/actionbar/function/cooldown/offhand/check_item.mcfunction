execute store result score $targetTime actionbar.cooldown run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".cooldown.target_time
execute store result score $length actionbar.cooldown run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".cooldown.length
scoreboard players operation $current actionbar.cooldown = $targetTime actionbar.cooldown
scoreboard players operation $current actionbar.cooldown -= $gametime general.utils
