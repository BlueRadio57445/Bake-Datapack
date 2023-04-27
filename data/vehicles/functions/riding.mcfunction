execute on vehicle run tag @s add vehicles.this
execute if predicate vehicles:riding_sandwich on vehicle run function vehicles:sandwich/riding
execute if predicate vehicles:riding_nothing run scoreboard players set @s vehicles.state 0
tag @e[tag=vehicles.this] remove vehicles.this
