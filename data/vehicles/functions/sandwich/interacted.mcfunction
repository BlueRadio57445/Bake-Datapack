advancement revoke @s only vehicles:sandwich/interacted

tag @s add vehicles.user
execute as @e[type=minecraft:donkey,tag=vehicles.sandwich] run function vehicles:sandwich/interacted_find
tag @s remove vehicles.user
