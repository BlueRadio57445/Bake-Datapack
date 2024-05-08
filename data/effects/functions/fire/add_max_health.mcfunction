scoreboard players set @s effects.fire.added_max_health 1
scoreboard players add $exceedHealth effects.state 1
scoreboard players operation $exceedHealth effects.state *= $100 general.const
scoreboard players operation $exceedHealth effects.state /= $maxHealth effects.state
data modify storage general:utils input set value {value:0f}
execute store result storage general:utils input.value double 0.01 run scoreboard players get $exceedHealth effects.state
execute if score $exceedHealth effects.state matches 1.. run function effects:fire/_add_max_health with storage general:utils input
