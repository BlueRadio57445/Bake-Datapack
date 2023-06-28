# 使用知識
execute as @a[scores={knowledge.use=1..}] store success score @s knowledge.mainhand if predicate knowledge:hold_knowledge1 run item modify entity @s weapon.mainhand knowledge:use_knowledge
execute as @a[scores={knowledge.use=1..}] store success score @s knowledge.offhand unless predicate knowledge:hold_knowledge1 if predicate knowledge:hold_knowledge2 run item modify entity @s weapon.offhand knowledge:use_knowledge
scoreboard players set @a knowledge.use 0

# 冷卻時間
scoreboard players remove @a[scores={knowledge.cd.fire_ball=1..}] knowledge.cd.fire_ball 1
scoreboard players remove @a[scores={knowledge.cd.fire_fan=1..}] knowledge.cd.fire_fan 1
scoreboard players remove @a[scores={knowledge.cd.fire_field=1..}] knowledge.cd.fire_field 1
scoreboard players remove @a[scores={knowledge.cd.end_fire_ball=1..}] knowledge.cd.end_fire_ball 1
scoreboard players remove @a[scores={knowledge.cd.end_fire_fan=1..}] knowledge.cd.end_fire_fan 1
scoreboard players remove @a[scores={knowledge.cd.end_fire_field=1..}] knowledge.cd.end_fire_field 1
scoreboard players remove @a[scores={knowledge.cd.fire_cannon=1..}] knowledge.cd.fire_cannon 1
scoreboard players remove @a[scores={knowledge.cd.water_bubble=1..}] knowledge.cd.water_bubble 1
scoreboard players remove @a[scores={knowledge.cd.water_swim=1..}] knowledge.cd.water_swim 1
scoreboard players remove @a[scores={knowledge.cd.water_wave=1..}] knowledge.cd.water_wave 1
scoreboard players remove @a[scores={knowledge.cd.water_swirl=1..}] knowledge.cd.water_swirl 1
scoreboard players remove @a[scores={knowledge.cd.earth_shield=1..}] knowledge.cd.earth_shield 1
scoreboard players remove @a[scores={knowledge.cd.earth_field=1..}] knowledge.cd.earth_field 1
scoreboard players remove @a[scores={knowledge.cd.earth_wall=1..}] knowledge.cd.earth_wall 1
scoreboard players remove @a[scores={knowledge.cd.earth_pillar=1..}] knowledge.cd.earth_pillar 1
scoreboard players remove @a[scores={knowledge.cd.air_feather=1..}] knowledge.cd.air_feather 1
scoreboard players remove @a[scores={knowledge.cd.air_cut=1..}] knowledge.cd.air_cut 1
scoreboard players remove @a[scores={knowledge.cd.air_run=1..}] knowledge.cd.air_run 1
scoreboard players remove @a[scores={knowledge.cd.air_tornado=1..}] knowledge.cd.air_tornado 1
scoreboard players remove @a[scores={knowledge.cd.lightning=1..}] knowledge.cd.lightning 1
scoreboard players remove @a[scores={knowledge.cd.lightning_mad=1..}] knowledge.cd.lightning_mad 1


execute as @e[type=armor_stand,tag=fire_ball] at @s run function knowledge:fire_ball/tick_effect
execute as @e[type=armor_stand,tag=end_fire_ball] at @s run function knowledge:end_fire_ball/tick_effect
execute as @a[scores={knowledge.fire_field=1..}] at @s run function knowledge:fire_field/tick_effect
execute as @a[scores={knowledge.end_fire_field=1..}] at @s run function knowledge:end_fire_field/tick_effect

execute as @e[type=marker,tag=water_bubble] at @s run function knowledge:water_bubble/tick_effect
execute as @e[type=armor_stand,tag=water_swirl] at @s run function knowledge:water_swirl/tick_effect
execute as @e[type=marker,tag=water_wave] at @s run function knowledge:water_wave/tick_effect

execute as @a[scores={knowledge.earth_shield=1..}] at @s run function knowledge:earth_shield/tick_effect
execute as @e[type=shulker,tag=earth_wall] at @s run function knowledge:earth_wall/tick_effect
execute as @e[type=block_display,tag=earth_wall] at @s run function knowledge:earth_wall/tick_effect
execute as @e[type=interaction,tag=earth_field] at @s run function knowledge:earth_field/tick_effect
execute as @e[type=interaction,tag=earth_pillar] at @s run function knowledge:earth_pillar/tick_effect

execute as @e[type=item_display,tag=air_feather] at @s run function knowledge:air_feather/tick_effect
execute as @a[scores={knowledge.air_run=1..}] at @s run function knowledge:air_run/tick_effect