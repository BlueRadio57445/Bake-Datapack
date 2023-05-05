data modify storage general:player_data Data[{selected:1b}].select set value 0b
execute if score $D1 general.id matches 0 run data modify storage general:player_data Data[{selected:1b,D1:0b}].select set value 1b
execute if score $D1 general.id matches 1 run data modify storage general:player_data Data[{selected:1b,D1:1b}].select set value 1b
execute if score $D1 general.id matches 2 run data modify storage general:player_data Data[{selected:1b,D1:2b}].select set value 1b
execute if score $D1 general.id matches 3 run data modify storage general:player_data Data[{selected:1b,D1:3b}].select set value 1b
execute if score $D1 general.id matches 4 run data modify storage general:player_data Data[{selected:1b,D1:4b}].select set value 1b
execute if score $D1 general.id matches 5 run data modify storage general:player_data Data[{selected:1b,D1:5b}].select set value 1b
execute if score $D1 general.id matches 6 run data modify storage general:player_data Data[{selected:1b,D1:6b}].select set value 1b
execute if score $D1 general.id matches 7 run data modify storage general:player_data Data[{selected:1b,D1:7b}].select set value 1b
execute if score $D1 general.id matches 8 run data modify storage general:player_data Data[{selected:1b,D1:8b}].select set value 1b
execute if score $D1 general.id matches 9 run data modify storage general:player_data Data[{selected:1b,D1:9b}].select set value 1b
data remove storage general:player_data Data[{select:0b}].selected
data remove storage general:player_data Data[].select
execute store result score $matchCount general.id if data storage general:player_data Data[{selected:1b}]
execute if score $matchCount general.id matches 2.. run function general:player_data/select/d0
