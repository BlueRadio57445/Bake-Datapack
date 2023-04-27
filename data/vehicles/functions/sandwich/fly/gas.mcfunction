data modify entity @s NoAI set value 0b
scoreboard players set @s vehicles.moving 1

# direction
tp 00000000-0000-0000-0000-000000000000 0.0 0.0 0.0
execute store result entity 00000000-0000-0000-0000-000000000000 Pos[0] double 0.01 run scoreboard players get $p.x_mot vehicles.calc
execute store result entity 00000000-0000-0000-0000-000000000000 Pos[2] double 0.01 run scoreboard players get $p.z_mot vehicles.calc
execute as 00000000-0000-0000-0000-000000000000 at @s facing 0.0 0.0 0.0 run tp @s ~ ~ ~ ~180 0
execute store result score $s.x_rot vehicles.calc run data get entity 00000000-0000-0000-0000-000000000000 Rotation[0] 1

# facing
execute if score @s vehicles.prev_x_rot = @s vehicles.prev_x_rot run scoreboard players operation $p.x_rot vehicles.calc = @s vehicles.prev_x_rot
execute unless score @s vehicles.prev_x_rot = @s vehicles.prev_x_rot on owner store result score $p.x_rot vehicles.calc run data get entity @s Rotation[0]
scoreboard players operation $d.x_rot vehicles.calc = $p.x_rot vehicles.calc
scoreboard players operation $d.x_rot vehicles.calc -= $s.x_rot vehicles.calc
scoreboard players operation $d.x_rot vehicles.calc %= $360 vehicles.const
execute if score $d.x_rot vehicles.calc matches 0..22 run scoreboard players set $dir vehicles.calc 0
execute if score $d.x_rot vehicles.calc matches 23..67 run scoreboard players set $dir vehicles.calc 1
execute if score $d.x_rot vehicles.calc matches 68..112 run scoreboard players set $dir vehicles.calc 2
execute if score $d.x_rot vehicles.calc matches 113..157 run scoreboard players set $dir vehicles.calc 3
execute if score $d.x_rot vehicles.calc matches 158..202 run scoreboard players set $dir vehicles.calc 4
execute if score $d.x_rot vehicles.calc matches 203..247 run scoreboard players set $dir vehicles.calc 8
execute if score $d.x_rot vehicles.calc matches 248..292 run scoreboard players set $dir vehicles.calc 7
execute if score $d.x_rot vehicles.calc matches 293..337 run scoreboard players set $dir vehicles.calc 6
execute if score $d.x_rot vehicles.calc matches 338..359 run scoreboard players set $dir vehicles.calc 0
execute if score @s vehicles.dir = @s vehicles.dir unless score @s vehicles.dir = $dir vehicles.calc run scoreboard players set @s vehicles.accel 0
scoreboard players operation @s vehicles.dir = $dir vehicles.calc
scoreboard players operation $dir vehicles.calc %= $5 vehicles.const
execute on owner store result score @s vehicles.prev_x_rot run data get entity @s Rotation[0]

# motion
scoreboard players operation $s.x_mot vehicles.calc = $p.x_mot vehicles.calc
scoreboard players operation $s.z_mot vehicles.calc = $p.z_mot vehicles.calc
scoreboard players set $s.y_mot vehicles.calc 0
execute unless score $dir vehicles.calc matches 2 run function vehicles:sandwich/fly/portion
scoreboard players set $speed vehicles.calc 6
execute if score @s vehicles.sandwich.speed matches 1 run scoreboard players set $speed vehicles.calc 12
scoreboard players operation $s.x_mot vehicles.calc *= $speed vehicles.calc
scoreboard players operation $s.y_mot vehicles.calc *= $speed vehicles.calc
scoreboard players operation $s.z_mot vehicles.calc *= $speed vehicles.calc
tp 00000000-0000-0000-0000-000000000000 0.0 0.0 0.0

# acceleration
execute unless score @s vehicles.accel matches 10 run scoreboard players add @s vehicles.accel 1
scoreboard players operation $d.x_mot vehicles.calc = $s.x_mot vehicles.calc
scoreboard players operation $d.y_mot vehicles.calc = $s.y_mot vehicles.calc
scoreboard players operation $d.z_mot vehicles.calc = $s.z_mot vehicles.calc
scoreboard players operation $d.x_mot vehicles.calc -= @s vehicles.x_mot
scoreboard players operation $d.y_mot vehicles.calc -= @s vehicles.y_mot
scoreboard players operation $d.z_mot vehicles.calc -= @s vehicles.z_mot
scoreboard players operation $pd.x_mot vehicles.calc = $d.x_mot vehicles.calc
scoreboard players operation $pd.y_mot vehicles.calc = $d.y_mot vehicles.calc
scoreboard players operation $pd.z_mot vehicles.calc = $d.z_mot vehicles.calc
execute if score $pd.x_mot vehicles.calc matches ..-1 run scoreboard players operation $pd.x_mot vehicles.calc *= $-1 vehicles.const
execute if score $pd.y_mot vehicles.calc matches ..-1 run scoreboard players operation $pd.y_mot vehicles.calc *= $-1 vehicles.const
execute if score $pd.z_mot vehicles.calc matches ..-1 run scoreboard players operation $pd.z_mot vehicles.calc *= $-1 vehicles.const
scoreboard players operation $pd.x_mot vehicles.calc *= @s vehicles.accel
scoreboard players operation $pd.y_mot vehicles.calc *= @s vehicles.accel
scoreboard players operation $pd.z_mot vehicles.calc *= @s vehicles.accel
scoreboard players operation $pd.x_mot vehicles.calc /= $100 vehicles.const
scoreboard players operation $pd.y_mot vehicles.calc /= $100 vehicles.const
scoreboard players operation $pd.z_mot vehicles.calc /= $100 vehicles.const
scoreboard players operation $nd.x_mot vehicles.calc = $pd.x_mot vehicles.calc
scoreboard players operation $nd.y_mot vehicles.calc = $pd.y_mot vehicles.calc
scoreboard players operation $nd.z_mot vehicles.calc = $pd.z_mot vehicles.calc
scoreboard players operation $nd.x_mot vehicles.calc *= $-1 vehicles.const
scoreboard players operation $nd.y_mot vehicles.calc *= $-1 vehicles.const
scoreboard players operation $nd.z_mot vehicles.calc *= $-1 vehicles.const
execute if score $d.x_mot vehicles.calc > $pd.x_mot vehicles.calc run scoreboard players operation @s vehicles.x_mot += $pd.x_mot vehicles.calc
execute if score $d.y_mot vehicles.calc > $pd.y_mot vehicles.calc run scoreboard players operation @s vehicles.y_mot += $pd.y_mot vehicles.calc
execute if score $d.z_mot vehicles.calc > $pd.z_mot vehicles.calc run scoreboard players operation @s vehicles.z_mot += $pd.z_mot vehicles.calc
execute if score $d.x_mot vehicles.calc < $nd.x_mot vehicles.calc run scoreboard players operation @s vehicles.x_mot += $nd.x_mot vehicles.calc
execute if score $d.y_mot vehicles.calc < $nd.y_mot vehicles.calc run scoreboard players operation @s vehicles.y_mot += $nd.y_mot vehicles.calc
execute if score $d.z_mot vehicles.calc < $nd.z_mot vehicles.calc run scoreboard players operation @s vehicles.z_mot += $nd.z_mot vehicles.calc
execute if score $d.x_mot vehicles.calc <= $pd.x_mot vehicles.calc if score $d.x_mot vehicles.calc >= $nd.x_mot vehicles.calc run scoreboard players operation @s vehicles.x_mot = $s.x_mot vehicles.calc
execute if score $d.y_mot vehicles.calc <= $pd.y_mot vehicles.calc if score $d.y_mot vehicles.calc >= $nd.y_mot vehicles.calc run scoreboard players operation @s vehicles.y_mot = $s.y_mot vehicles.calc
execute if score $d.z_mot vehicles.calc <= $pd.z_mot vehicles.calc if score $d.z_mot vehicles.calc >= $nd.z_mot vehicles.calc run scoreboard players operation @s vehicles.z_mot = $s.z_mot vehicles.calc
execute if score $d.x_mot vehicles.calc matches -10..10 run scoreboard players operation @s vehicles.x_mot = $s.x_mot vehicles.calc
execute if score $d.y_mot vehicles.calc matches -10..10 run scoreboard players operation @s vehicles.y_mot = $s.y_mot vehicles.calc
execute if score $d.z_mot vehicles.calc matches -10..10 run scoreboard players operation @s vehicles.z_mot = $s.z_mot vehicles.calc
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s vehicles.x_mot
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s vehicles.y_mot
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s vehicles.z_mot
