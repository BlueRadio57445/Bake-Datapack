# 玩家初次進入世界時才會觸發的初始化函式
advancement revoke @s only general:first_login
scoreboard players operation @s general.id = $playerCount general.id

data modify storage general:player_data Data append value {id:0}
execute store result storage general:player_data Data[-1].id int 1 run scoreboard players get @s general.id

scoreboard players add $playerCount general.id 1
scoreboard players set @s npc.state 0

spawnpoint @s -77 27 16
tp @s -77 27 16
