execute as @a[predicate=weapons:gloves/hold_loaded_lightning_gloves] run attribute @s minecraft:player.entity_interaction_range modifier add weapons:lightning_gloves 4 add_value
execute as @a[predicate=!weapons:gloves/hold_loaded_lightning_gloves] run attribute @s minecraft:player.entity_interaction_range modifier remove weapons:lightning_gloves
execute at @e[scores={weapons.gloves.lightning_duration=1..}, type=#mobs] run function weapons:gloves/lightning_gloves/summon_lightning
scoreboard players remove @e[scores={weapons.gloves.lightning_duration=1..}, type=#mobs] weapons.gloves.lightning_duration 1

