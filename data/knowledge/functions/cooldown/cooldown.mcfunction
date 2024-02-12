scoreboard players reset @s knowledge.cd.mainhand
scoreboard players reset @s knowledge.cd.offhand
execute if predicate knowledge:hold_knowledge1 run function knowledge:cooldown/mainhand
execute if predicate knowledge:hold_knowledge2 run function knowledge:cooldown/offhand
#function knowledge:cooldown/show_actionbar

#execute if score @s knowledge.cd.mainhand matches 1.. run schedule function knowledge:cooldown/schedule 20t append
#execute if score @s knowledge.cd.offhand matches 1.. run schedule function knowledge:cooldown/schedule 20t append

scoreboard players operation $current actionbar.cooldown = @s knowledge.cd.mainhand
execute store result score $length actionbar.cooldown run data get entity @s SelectedItem.tag.knowledge.cooldown
scoreboard players operation $slot actionbar.cooldown = @s general.player.selected_slot
execute if score $current actionbar.cooldown matches 1.. run function actionbar:cooldown/hotbar/start
execute if score $current actionbar.cooldown matches ..0 run function actionbar:cooldown/hotbar/end

scoreboard players operation $current actionbar.cooldown = @s knowledge.cd.offhand
execute store result score $length actionbar.cooldown run data get entity @s Inventory[{Slot:-106b}].tag.knowledge.cooldown
execute if score $current actionbar.cooldown matches 1.. run function actionbar:cooldown/offhand/start
execute if score $current actionbar.cooldown matches ..0 run function actionbar:cooldown/offhand/end
