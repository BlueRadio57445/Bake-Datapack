execute as @a[predicate=weapons:gloves/hold_loaded_lightning_gloves] run attribute @s minecraft:player.entity_interaction_range modifier add 00000000-0000-0000-0000-000000000300 "lightning_gloves" 4 add
execute as @a[predicate=!weapons:gloves/hold_loaded_lightning_gloves] run attribute @s minecraft:player.entity_interaction_range modifier remove 00000000-0000-0000-0000-000000000300
execute at @a[scores={weapons.gloves.lightning_duration=1..}] run function weapons:gloves/lightning_gloves/summon_lightning
scoreboard players remove @a[scores={weapons.gloves.lightning_duration=1..}] weapons.gloves.lightning_duration 1

