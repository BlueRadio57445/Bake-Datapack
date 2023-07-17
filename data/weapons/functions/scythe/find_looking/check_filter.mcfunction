scoreboard players operation $selected scythe = @s scythe
scoreboard players operation $selected scythe /= $filter scythe
scoreboard players operation $selected scythe %= $2 scythe
tag @s remove find_looking.in_filter
execute if score $selected scythe matches 1 run tag @s add find_looking.in_filter
