execute if data storage universe:bundle Items[0].tag{universe:1b} run tag @s add universe.1
execute if data storage universe:bundle Items[0].tag{universe:2b} run tag @s add universe.2
execute if data storage universe:bundle Items[0].tag{universe:3b} run tag @s add universe.3
execute if data storage universe:bundle Items[0].tag{universe:4b} run tag @s add universe.4
execute if data storage universe:bundle Items[0].tag{universe:5b} run tag @s add universe.5


data remove storage universe:bundle Items[0]
scoreboard players remove $temp universe 1