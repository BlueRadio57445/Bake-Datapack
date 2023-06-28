scoreboard players set $temp items.state 0
execute on attacker if entity @s[tag=items.this] run scoreboard players set $temp items.state 1
execute if score $temp items.state matches 1 run data modify entity @e[limit=1,type=minecraft:area_effect_cloud,tag=items.new] Owner set from entity @s UUID
execute if score $temp items.state matches 1 run tag @e[limit=1,type=minecraft:area_effect_cloud,tag=items.new] add items.raw_egg.follow
execute if score $temp items.state matches 1 run schedule function items:projectile/raw_egg/follow_tick 1t replace
