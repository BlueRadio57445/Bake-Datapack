execute store result storage general:player_data Select.id int 1 run scoreboard players get @s general.id
execute if score @s general.id < $playerCount general.id run function general:player_data/_macro/select with storage general:player_data Select
