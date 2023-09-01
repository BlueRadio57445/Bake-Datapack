$data modify storage general:player_data Remove set value {id:0,path:"$(path)"}
execute store result storage general:player_data Remove.id int 1 run scoreboard players get @s general.id
execute if score @s general.id < $playerCount general.id run function general:player_data/_macro/remove with storage general:player_data Remove
