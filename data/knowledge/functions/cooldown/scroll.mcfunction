# 執行者是玩家
execute store result score $current knowledge.scroll run data get entity @s SelectedItemSlot
execute unless score @s knowledge.scroll = $current knowledge.scroll run function knowledge:cooldown/cooldown
scoreboard players operation @s knowledge.scroll = $current knowledge.scroll