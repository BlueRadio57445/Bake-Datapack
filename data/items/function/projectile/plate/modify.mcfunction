summon minecraft:marker ~ ~ ~ {Tags:["items.plate","items.new"]}
ride @e[limit=1,type=minecraft:marker,tag=items.new] mount @s
tag @e[type=minecraft:marker,tag=items.new] remove items.new
execute if data entity @s Item.components.minecraft:custom_data.plate{upgraded:1b} on passengers run scoreboard players set @s items.state 1
schedule function items:projectile/plate/tick 1t replace
