#declare tag vehicles.sandwich_spawner

advancement revoke @s only vehicles:sandwich/used_bag

execute if entity @e[type=minecraft:item_frame,predicate=vehicles:sandwich/can_summon] run function vehicles:sandwich/summon
execute if entity @e[type=minecraft:item_frame,predicate=vehicles:sandwich/cannot_summon] run function vehicles:sandwich/return_bag
kill @e[tag=vehicles.sandwich_spawner]
