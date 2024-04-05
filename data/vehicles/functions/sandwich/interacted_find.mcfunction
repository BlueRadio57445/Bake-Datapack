tag @s add vehicles.this
execute if entity @a[limit=1,tag=vehicles.user,predicate=vehicles:sandwich/looking_at_this] run function vehicles:sandwich/interacted_found
tag @s remove vehicles.this
