# called when flattener process finished
# copy concatenated string to executor
data modify storage general:gcm execute[-1].command set string block ~ ~ ~-1 LastOutput 100 -38
data remove block ~ ~ -1 LastOutput

setblock ~ ~ ~-1 chain_command_block[facing=north]{auto:1b,TrackOutput:1b,UpdateLastExecution:0b,Command:"enchant 0000-0000-0000-0000-0001 aqua_affinity"}
#execute as @a run tellraw @s ["result: ",{"nbt":"execute","storage":"general:gcm"}," \u00a7a(",{"score":{"objective": "timer","name": "@s"},"color":"green"},"\u00a7a)"]