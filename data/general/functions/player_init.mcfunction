# 玩家初次進入世界時才會觸發的初始化函式
advancement revoke @s only general:first_login
scoreboard players operation @s general.id = $playerCount general.id

data modify storage general:player_data Data append value {id:0,D0:0b,D1:0b,D2:0b,D3:0b}
function general:player_data/digit
execute store result storage general:player_data Data[-1].id int 1 run scoreboard players get @s general.id
execute store result storage general:player_data Data[-1].D0 byte 1 run scoreboard players get $D0 general.id
execute store result storage general:player_data Data[-1].D1 byte 1 run scoreboard players get $D1 general.id
execute store result storage general:player_data Data[-1].D2 byte 1 run scoreboard players get $D2 general.id
execute store result storage general:player_data Data[-1].D3 byte 1 run scoreboard players get $D3 general.id
scoreboard players reset $D0 general.id
scoreboard players reset $D1 general.id
scoreboard players reset $D2 general.id
scoreboard players reset $D3 general.id

scoreboard players add $playerCount general.id 1
scoreboard players set @s npc.state 0
