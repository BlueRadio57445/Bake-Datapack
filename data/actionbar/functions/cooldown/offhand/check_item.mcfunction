execute store result score $targetTime actionbar.cooldown run data get entity @s Inventory[{Slot:-106b}].tag.cooldown.target_time
execute store result score $length actionbar.cooldown run data get entity @s Inventory[{Slot:-106b}].tag.cooldown.length
scoreboard players operation $current actionbar.cooldown = $targetTime actionbar.cooldown
scoreboard players operation $current actionbar.cooldown -= $gametime general.utils
