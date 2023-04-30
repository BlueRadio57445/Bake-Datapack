execute if predicate vehicles:sandwich/missing_saddle at @s run function vehicles:sandwich/missing_saddle

execute if score @s vehicles.sandwich.fly matches 1 run function vehicles:sandwich/fly/main

execute on owner store result score $p.x_rot vehicles.calc run data get entity @s Rotation[0]
execute if score @s vehicles.prev_x_rot = @s vehicles.prev_x_rot unless score @s vehicles.prev_x_rot = $p.x_rot vehicles.calc run function vehicles:sandwich/rotation
scoreboard players operation @s vehicles.prev_x_rot = $p.x_rot vehicles.calc
