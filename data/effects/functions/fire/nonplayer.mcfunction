execute store result score $temp effects.state run data get entity @s Fire 0.05
execute if score @s effects.fire.duration > $temp effects.state store result entity @s Fire short 20 run scoreboard players get @s effects.fire.duration
