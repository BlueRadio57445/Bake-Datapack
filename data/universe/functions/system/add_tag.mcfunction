execute if data storage universe:bundle Items[0].tag.universe{id:"water_universe"} run tag @s add universe.water_universe
#execute if data storage universe:bundle Items[0].tag.universe{id:"water_universe"} run tag @s add universe.water_universe
#execute if data storage universe:bundle Items[0].tag.universe{id:"water_universe"} run tag @s add universe.water_universe
#execute if data storage universe:bundle Items[0].tag.universe{id:"water_universe"} run tag @s add universe.water_universe
#execute if data storage universe:bundle Items[0].tag.universe{id:"water_universe"} run tag @s add universe.water_universe

scoreboard players remove $temp universe 1
data remove storage universe:bundle Items[0]
execute if score $temp universe matches 1.. run function universe:system/add_tag

