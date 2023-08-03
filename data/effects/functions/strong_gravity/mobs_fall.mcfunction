execute store result score $y_mot effects.state run data get entity @s Motion[1] 100
scoreboard players remove $y_mot effects.state 12
execute store result entity @s Motion[1] double 0.01 run scoreboard players get $y_mot effects.state
