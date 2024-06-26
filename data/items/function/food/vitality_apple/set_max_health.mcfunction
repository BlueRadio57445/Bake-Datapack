scoreboard players set $max_health items.vitality_apple 2
scoreboard players operation $max_health items.vitality_apple *= $amount items.vitality_apple
scoreboard players add $max_health items.vitality_apple 20
execute store result storage items:macro vitality_apple.amount int 1 run scoreboard players get $max_health items.vitality_apple
function items:food/vitality_apple/set_max_health_macro with storage items:macro vitality_apple
