data modify storage general:utils input set value {}
data modify storage general:utils input.command set from storage general:utils Execute[1]
function general:utils/execute with storage general:utils input
data remove storage general:utils Execute[1]
execute unless data storage general:utils Execute[1] run data modify storage general:utils Execute set value [""]
execute if data storage general:utils Execute[1] run function general:utils/execute_server
