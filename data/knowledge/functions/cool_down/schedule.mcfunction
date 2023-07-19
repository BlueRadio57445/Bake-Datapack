schedule function knowledge:cool_down/schedule 4t

scoreboard players reset @a knowledge.cd.mainhand
scoreboard players reset @a knowledge.cd.offhand

execute as @a[predicate=knowledge:hold_knowledge1] run function knowledge:cool_down/mainhand
execute as @a[predicate=knowledge:hold_knowledge2] run function knowledge:cool_down/offhand
execute as @a run function knowledge:cool_down/show_actionbar