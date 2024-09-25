# 隨機取數
scoreboard players reset $x weapons
scoreboard players reset $y weapons
execute store result score $x weapons run random value -10..10
execute store result score $y weapons run random value -10..10
execute if score $x weapons matches -3..3 if score $y weapons matches -3..3 run function weapons:gloves/lightning_gloves/rand
data modify storage weapons:gloves lightning set value {}
execute store result storage weapons:gloves lightning.x int 1 run scoreboard players get $x weapons
execute store result storage weapons:gloves lightning.y int 1 run scoreboard players get $y weapons