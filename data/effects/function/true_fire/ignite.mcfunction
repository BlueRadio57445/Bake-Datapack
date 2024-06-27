summon minecraft:silverfish 0.5 0.0 0.5 {Tags:["effects.true_fire.target","effects.true_fire.new_target"],NoAI:1b,Silent:1b}
$summon minecraft:arrow 0.5 1.0 0.5 {Tags:["effects.true_fire.arrow","effects.true_fire.new_arrow"],Motion:[0.0d,-1.0d,0.0d],weapon:{components:{"minecraft:enchantments":{levels:{"effects:set_origin_fire":$(level)}}},count:1,id:"minecraft:bow"}}
data modify entity @e[limit=1,type=minecraft:arrow,tag=effects.true_fire.new_arrow] Owner set from entity @s UUID
tag @e[limit=1,type=minecraft:arrow,tag=effects.true_fire.new_arrow] remove effects.true_fire.new_arrow
