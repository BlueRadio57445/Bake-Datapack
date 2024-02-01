execute if predicate vehicles:sandwich/missing_saddle at @s run function vehicles:sandwich/missing_saddle

execute if score @s vehicles.sandwich.fly matches 1 run function vehicles:sandwich/fly/main

execute on owner store result score $p.x_rot vehicles.calc run data get entity @s Rotation[0]
execute if score @s vehicles.moving matches 1 store result entity @s Rotation[0] float 1 run scoreboard players get $p.x_rot vehicles.calc
execute if score @s vehicles.moving matches 1 run data modify entity @s Rotation[1] set value 0.0f
execute if score @s vehicles.prev_x_rot = @s vehicles.prev_x_rot unless score @s vehicles.prev_x_rot = $p.x_rot vehicles.calc run function vehicles:sandwich/rotation
scoreboard players operation @s vehicles.prev_x_rot = $p.x_rot vehicles.calc
