execute if data storage universe:bundle Items[0].tag{universe:1b} run tag @s add universe.1
execute if data storage universe:bundle Items[0].tag{universe:2b} run tag @s add universe.2
execute if data storage universe:bundle Items[0].tag{universe:3b} run tag @s add universe.3
execute if data storage universe:bundle Items[0].tag{universe:4b} run tag @s add universe.4
execute if data storage universe:bundle Items[0].tag{universe:5b} run tag @s add universe.5

scoreboard players reset $is_universe universe
execute store success score $is_universe universe if data storage universe:bundle Items[0].tag.universe
execute if score $is_universe universe matches 1 run scoreboard players remove $temp universe 1
execute if score $is_universe universe matches 1 run data remove storage universe:bundle Items[0]
execute if score $is_universe universe matches 0 run data remove storage universe:bundle Items[0]
execute if score $is_universe universe matches 0 if data storage universe:bundle Items[0] run function universe:system/add_tag

