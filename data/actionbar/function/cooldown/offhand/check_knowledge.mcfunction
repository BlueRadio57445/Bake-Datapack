function knowledge:cooldown/offhand
scoreboard players operation $current actionbar.cooldown = @s knowledge.cd.offhand
scoreboard players operation $targetTime actionbar.cooldown += $current actionbar.cooldown
execute store result score $length actionbar.cooldown run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".knowledge.cooldown
