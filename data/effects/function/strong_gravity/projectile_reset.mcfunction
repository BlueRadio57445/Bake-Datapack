execute on origin unless score @s effects.strong_gravity.duration matches 1.. run return 0
execute unless data entity @s {HasBeenShot:0b} run return 0
data modify entity @s Motion[1] set value 0d
execute as 00000000-0000-0000-0000-000000000000 positioned as @s run tp @s ^ ^ ^1
execute store result score $divisor effects.state run data get entity 00000000-0000-0000-0000-000000000000 Pos[0] 100
execute store result score $multiplier effects.state run data get entity @s Motion[0] 100
execute store result score $y_mot effects.state run data get entity 00000000-0000-0000-0000-000000000000 Pos[1] 100
scoreboard players operation $y_mot effects.state *= $multiplier effects.state
scoreboard players operation $y_mot effects.state /= $divisor effects.state
execute if score $temp effects.state matches -90 run scoreboard players set $y_mot effects.state 200
execute if score $temp effects.state matches 90 run scoreboard players set $y_mot effects.state -200
execute store result entity @s Motion[1] double 0.01 run scoreboard players get $y_mot effects.state
tp 00000000-0000-0000-0000-000000000000 0.0 0.0 0.0
