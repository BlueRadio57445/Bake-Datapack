scoreboard players reset @s vehicles.dir
scoreboard players set @s vehicles.accel 0
data modify entity @s FallDistance set value 0b

# deceleration

execute if score @s vehicles.x_mot matches -25..25 if score @s vehicles.y_mot matches -25..25 if score @s vehicles.z_mot matches -25..25 run function vehicles:sandwich/fly/break
execute store result entity @s Motion[0] double 0.00085 run scoreboard players get @s vehicles.x_mot
execute store result entity @s Motion[1] double 0.00085 run scoreboard players get @s vehicles.y_mot
execute store result entity @s Motion[2] double 0.00085 run scoreboard players get @s vehicles.z_mot
execute store result score @s vehicles.x_mot run data get entity @s Motion[0] 1000
execute store result score @s vehicles.y_mot run data get entity @s Motion[1] 1000
execute store result score @s vehicles.z_mot run data get entity @s Motion[2] 1000
