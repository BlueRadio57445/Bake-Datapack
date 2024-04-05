scoreboard players reset $rng boss
execute store result score $rng boss run random value 1..6
execute if score $rng boss matches 1 run data modify storage boss:storage poison_sequence set value [1, 2, 3]
execute if score $rng boss matches 2 run data modify storage boss:storage poison_sequence set value [1, 3, 2]
execute if score $rng boss matches 3 run data modify storage boss:storage poison_sequence set value [2, 1, 3]
execute if score $rng boss matches 4 run data modify storage boss:storage poison_sequence set value [2, 3, 1]
execute if score $rng boss matches 5 run data modify storage boss:storage poison_sequence set value [3, 1, 2]
execute if score $rng boss matches 6 run data modify storage boss:storage poison_sequence set value [3, 2, 1]