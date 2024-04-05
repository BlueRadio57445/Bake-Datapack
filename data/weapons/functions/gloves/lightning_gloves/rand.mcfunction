# 隨機取數
scoreboard players reset $rng weapons
execute store result score $rng weapons run random value -10..10
execute if score $rng weapons matches -3..3 run function weapons:gloves/lightning_gloves/rand
return run scoreboard players get $rng weapons