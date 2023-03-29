# 使用知識
execute as @a[scores={knowledge.use=1..}] store success score @s knowledge.mainhand if predicate knowledge:hold_knowledge1 run item modify entity @s weapon.mainhand knowledge:use_knowledge
execute as @a[scores={knowledge.use=1..}] store success score @s knowledge.offhand unless predicate knowledge:hold_knowledge1 if predicate knowledge:hold_knowledge2 run item modify entity @s weapon.offhand knowledge:use_knowledge
scoreboard players set @a knowledge.use 0

# 冷卻時間
scoreboard players remove @a[scores={knowledge.cd.fire_ball=1..}] knowledge.cd.fire_ball 1
scoreboard players remove @a[scores={knowledge.cd.fire_fan=1..}] knowledge.cd.fire_fan 1
scoreboard players remove @a[scores={knowledge.cd.fire_field=1..}] knowledge.cd.fire_field 1
scoreboard players remove @a[scores={knowledge.cd.fire_cannon=1..}] knowledge.cd.fire_cannon 1


execute as @e[type=armor_stand,tag=fire_ball] at @s run function knowledge:fire_ball/tick_effect
execute as @a[scores={knowledge.fire_field=1..}] at @s run function knowledge:fire_field/tick_effect