summon minecraft:marker ~ ~ ~ {Tags:["items.raw_egg","items.new"]}
data modify entity @e[limit=1,type=minecraft:marker,tag=items.new] data.Owner set from entity @s Owner
ride @e[limit=1,type=minecraft:marker,tag=items.new] mount @s
tag @e[type=minecraft:marker,tag=items.new] remove items.new
schedule function items:projectile/raw_egg/tick 1t replace
