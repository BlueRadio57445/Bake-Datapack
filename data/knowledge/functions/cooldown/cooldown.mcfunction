scoreboard players reset @a knowledge.cd.mainhand
scoreboard players reset @a knowledge.cd.offhand
execute if predicate knowledge:hold_knowledge1 run function knowledge:cooldown/mainhand
execute if predicate knowledge:hold_knowledge2 run function knowledge:cooldown/offhand
function knowledge:cooldown/show_actionbar

execute if score @s knowledge.cd.mainhand matches 1.. run schedule function knowledge:cooldown/schedule 20t append
execute if score @s knowledge.cd.offhand matches 1.. run schedule function knowledge:cooldown/schedule 20t append