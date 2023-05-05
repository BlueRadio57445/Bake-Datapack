data remove storage general:player_data Data[{selected:1b}].selected
data modify storage general:player_data Data append value {id:0,D0:0b,D1:0b,D2:0b,D3:0b,selected:1b}
execute store result storage general:player_data Data[-1].id int 1 run scoreboard players get @s general.id
execute store result storage general:player_data Data[-1].D0 byte 1 run scoreboard players get $D0 general.id
execute store result storage general:player_data Data[-1].D1 byte 1 run scoreboard players get $D1 general.id
execute store result storage general:player_data Data[-1].D2 byte 1 run scoreboard players get $D2 general.id
execute store result storage general:player_data Data[-1].D3 byte 1 run scoreboard players get $D3 general.id
execute if score $playerCount general.id < @s general.id run scoreboard players operation $playerCount general.id = @s general.id
execute if score $playerCount general.id = @s general.id run scoreboard players add $playerCount general.id 1
