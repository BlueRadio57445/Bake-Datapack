$data modify storage general:player_data Get set value {id:0,path:"$(path)",target:"$(target)"}
execute store result storage general:player_data Get.id int 1 run scoreboard players get @s general.id
execute if score @s general.id < $playerCount general.id run function general:player_data/_macro/get with storage general:player_data Get
