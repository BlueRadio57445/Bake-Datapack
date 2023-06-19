execute if score @s vehicles.sandwich.fly matches 1 store result entity @s Rotation[0] float 1 run scoreboard players get $p.x_rot vehicles.calc
data modify storage vehicles:sandwich display set value {start_interpolation:0,interpolation_duration:2,transformation:{right_rotation:{axis:[0.0f,1.0f,0.0f],angle:0f}}}
execute store result storage vehicles:sandwich display.transformation.right_rotation.angle float -0.000174 on owner run data get entity @s Rotation[0] 100
execute on passengers as @s[type=minecraft:area_effect_cloud] on passengers run data modify entity @s {} merge from storage vehicles:sandwich display
