# 執行者、位置是玩家
execute as @s[tag=!touched_air_feather] if entity @e[type=item_display,tag=air_feather,distance=..1.5] run scoreboard players add @s knowledge.air_run 5
execute if entity @e[type=item_display,tag=air_feather,distance=..1.5] run tag @s add touched_air_feather
execute unless entity @e[type=item_display,tag=air_feather,distance=..1.5] run tag @s remove touched_air_feather