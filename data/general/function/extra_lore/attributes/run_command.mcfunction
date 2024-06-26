data modify storage general:utils input set value {command:""}
data modify storage general:utils input.command set from storage general:extra_lore Attributes[0].extra_command
function general:utils/execute with storage general:utils input
