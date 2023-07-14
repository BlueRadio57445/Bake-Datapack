# setup string flattening processor
    fill ~ ~ ~ ~3 ~ ~3 air
    setblock ~ ~ ~ repeating_command_block[facing=north]{auto:1b,TrackOutput:0b,UpdateLastExecution:1b,Command:"setblock ~ ~ ~ repeating_command_block[facing=north]"}
    setblock ~ ~ ~1 chain_command_block[facing=south]{auto:1b,TrackOutput:1b,UpdateLastExecution:0b,Command:"function general:_gcm_/flattener/update"}
    setblock ~ ~ ~2 chain_command_block[facing=east]{auto:1b,TrackOutput:1b,UpdateLastExecution:0b,Command:"enchant 0000-0000-0000-0000-0001 aqua_affinity"}
    setblock ~1 ~ ~2 chain_command_block[facing=north]{auto:1b,TrackOutput:1b,UpdateLastExecution:0b,Command:"data modify block ~ ~ ~-1 Command set string block ~-1 ~ ~ LastOutput 100 -38"}
    setblock ~1 ~ ~1 chain_command_block[facing=west]{auto:1b,TrackOutput:1b,UpdateLastExecution:0b,Command:""}
    setblock ~1 ~ ~ chain_command_block[facing=north]{auto:1b,TrackOutput:1b,UpdateLastExecution:1b,Command:"function general:_gcm_/flattener/off"}