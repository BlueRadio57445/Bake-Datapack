execute if data entity @s SaddleItem run function vehicles:sandwich/fly/return_saddle
execute on owner store result score $p.x_mot vehicles.calc run data get entity @s Motion[0] 10000
execute if score $p.x_mot vehicles.calc matches ..-1 run scoreboard players add $p.x_mot vehicles.calc 1
execute on owner store result score $p.z_mot vehicles.calc run data get entity @s Motion[2] 10000
execute if score $p.z_mot vehicles.calc matches ..-1 run scoreboard players add $p.z_mot vehicles.calc 1

execute if score $p.x_mot vehicles.calc matches 0 if score $p.z_mot vehicles.calc matches 0 if score @s vehicles.moving matches 1 run function vehicles:sandwich/fly/neutral
execute unless score $p.x_mot vehicles.calc matches 0 run function vehicles:sandwich/fly/gas
execute if score $p.x_mot vehicles.calc matches 0 unless score $p.z_mot vehicles.calc matches 0 run function vehicles:sandwich/fly/gas
