scoreboard players reset * general.id
scoreboard players set $playerCount general.id 0
scoreboard players operation $world general.version = $datapack general.version
data modify storage general:player_data Data set value []
