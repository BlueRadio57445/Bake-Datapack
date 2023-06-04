data modify storage general:player_data Data[].selected set value 1b
function general:player_data/digit
execute if score $playerCount general.id matches 1001.. run function general:player_data/select/d3
execute if score $playerCount general.id matches 101..1000 run function general:player_data/select/d2
execute if score $playerCount general.id matches 11..100 run function general:player_data/select/d1
execute if score $playerCount general.id matches 2..10 run function general:player_data/select/d0
execute store result score $selected general.id run data get storage general:player_data Data[{selected:1b}].id
execute unless score $selected general.id = @s general.id run function general:player_data/select/failed
scoreboard players reset $D0 general.id
scoreboard players reset $D1 general.id
scoreboard players reset $D2 general.id
scoreboard players reset $D3 general.id
scoreboard players reset $selected general.id
scoreboard players reset $matchCount general.id
