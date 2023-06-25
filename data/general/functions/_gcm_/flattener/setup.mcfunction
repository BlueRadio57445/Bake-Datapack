# setup string flattening processor
    fill ~ ~ ~ ~1 ~ ~3 air
    setblock ~ ~ ~ repeating_command_block[facing=north]{auto:1b,TrackOutput:0b,UpdateLastExecution:1b,Command:"setblock ~ ~ ~ repeating_command_block[facing=north]"}
    setblock ~ ~ ~1 chain_command_block[facing=south]{auto:1b,TrackOutput:1b,UpdateLastExecution:0b,Command:"function general:_gcm_/flattener/update"}
    setblock ~ ~ ~2 chain_command_block[facing=north]{auto:1b,TrackOutput:1b,UpdateLastExecution:0b,Command:"enchant 0000-0000-0000-0000-0001 aqua_affinity"}
    setblock ~ ~ ~3 chain_command_block[facing=south]{auto:1b,TrackOutput:1b,UpdateLastExecution:1b,Command:"function general:_gcm_/flattener/off"}