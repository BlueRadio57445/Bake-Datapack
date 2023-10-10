execute if data storage universe:bundle Items[0].tag.universe{id:"water_universe"} run tag @s add universe.water_universe
execute if data storage universe:bundle Items[0].tag.universe{id:"vitality_universe"} run tag @s add universe.vitality_universe
execute if data storage universe:bundle Items[0].tag.universe{id:"orichalcum_universe"} run tag @s add universe.orichalcum_universe
execute if data storage universe:bundle Items[0].tag.universe{id:"furry_universe"} run tag @s add universe.furry_universe
execute if data storage universe:bundle Items[0].tag.universe{id:"mg_universe"} run tag @s add universe.mg_universe
execute if data storage universe:bundle Items[0].tag.universe{id:"light_universe"} run tag @s add universe.light_universe
execute if data storage universe:bundle Items[0].tag.universe{id:"xp_universe"} run tag @s add universe.xp_universe

execute if data storage universe:bundle Items[0].tag.universe{id:"sword_universe"} run tag @s add universe.sword_universe
execute if data storage universe:bundle Items[0].tag.universe{id:"axe_universe"} run tag @s add universe.axe_universe
execute if data storage universe:bundle Items[0].tag.universe{id:"trident_universe"} run tag @s add universe.trident_universe
execute if data storage universe:bundle Items[0].tag.universe{id:"hammer_universe"} run tag @s add universe.hammer_universe
execute if data storage universe:bundle Items[0].tag.universe{id:"scythe_universe"} run tag @s add universe.scythe_universe

#execute if data storage universe:bundle Items[0].tag.universe{id:"water_universe"} run tag @s add universe.water_universe
#execute if data storage universe:bundle Items[0].tag.universe{id:"water_universe"} run tag @s add universe.water_universe
#execute if data storage universe:bundle Items[0].tag.universe{id:"water_universe"} run tag @s add universe.water_universe
#execute if data storage universe:bundle Items[0].tag.universe{id:"water_universe"} run tag @s add universe.water_universe

scoreboard players remove $temp universe 1
data remove storage universe:bundle Items[0]
execute if score $temp universe matches 1.. run function universe:system/add_tag

