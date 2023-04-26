# pop pending raw JSON string
    data modify entity 0000-0000-0000-0000-0001 CustomName set from storage general:gcm pending.once[0].command
    data modify storage general:gcm execute.once append value {id:0,command:""}
    data modify storage general:gcm execute.once[-1].id set from storage general:gcm pending.once[0].id
    data remove storage general:gcm pending.once[0]
    execute unless data storage general:gcm pending.once[0] run setblock ~1 ~ ~ chain_command_block[facing=north]
