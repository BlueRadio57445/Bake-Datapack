execute as @a[predicate=weapons:gloves/hold_loaded_lightning_gloves] run attribute @s minecraft:player.entity_interaction_range modifier add 00000000-0000-0000-0000-000000000300 "lightning_gloves" 4 add
execute as @a[predicate=!weapons:gloves/hold_loaded_lightning_gloves] run attribute @s minecraft:player.entity_interaction_range modifier remove 00000000-0000-0000-0000-000000000300
execute at @e[scores={weapons.gloves.lightning_duration=1..}, type=#mobs] run function weapons:gloves/lightning_gloves/summon_lightning
scoreboard players remove @e[scores={weapons.gloves.lightning_duration=1..}, type=#mobs] weapons.gloves.lightning_duration 1

