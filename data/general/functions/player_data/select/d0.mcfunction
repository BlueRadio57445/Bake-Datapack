data modify storage general:player_data Data[{selected:1b}].select set value 0b
execute if score $D0 general.id matches 0 run data modify storage general:player_data Data[{selected:1b,D0:0b}].select set value 1b
execute if score $D0 general.id matches 1 run data modify storage general:player_data Data[{selected:1b,D0:1b}].select set value 1b
execute if score $D0 general.id matches 2 run data modify storage general:player_data Data[{selected:1b,D0:2b}].select set value 1b
execute if score $D0 general.id matches 3 run data modify storage general:player_data Data[{selected:1b,D0:3b}].select set value 1b
execute if score $D0 general.id matches 4 run data modify storage general:player_data Data[{selected:1b,D0:4b}].select set value 1b
execute if score $D0 general.id matches 5 run data modify storage general:player_data Data[{selected:1b,D0:5b}].select set value 1b
execute if score $D0 general.id matches 6 run data modify storage general:player_data Data[{selected:1b,D0:6b}].select set value 1b
execute if score $D0 general.id matches 7 run data modify storage general:player_data Data[{selected:1b,D0:7b}].select set value 1b
execute if score $D0 general.id matches 8 run data modify storage general:player_data Data[{selected:1b,D0:8b}].select set value 1b
execute if score $D0 general.id matches 9 run data modify storage general:player_data Data[{selected:1b,D0:9b}].select set value 1b
data remove storage general:player_data Data[{select:0b}].selected
data remove storage general:player_data Data[].select
