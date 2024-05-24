function knowledge:cooldown/mainhand
scoreboard players operation $current actionbar.cooldown = @s knowledge.cd.mainhand
scoreboard players operation $targetTime actionbar.cooldown += $current actionbar.cooldown
execute store result score $length actionbar.cooldown run data get entity @s SelectedItem.components."minecraft:custom_data".knowledge.cooldown
