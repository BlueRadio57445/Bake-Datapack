execute on vehicle run tag @s add vehicles.this
scoreboard players set $certified vehicles.state 0
scoreboard players operation $system vehicles.rider = @s general.id
execute on vehicle on owner if predicate vehicles:riding_sandwich run scoreboard players set $certified vehicles.state 1
execute if score $certified vehicles.state matches 1 on vehicle run function vehicles:sandwich/init
execute if score $certified vehicles.state matches 0 run ride @s dismount
scoreboard players operation @s vehicles.state = $certified vehicles.state
tag @e[tag=vehicles.this] remove vehicles.this
advancement revoke @s only vehicles:started_riding_sandwich
