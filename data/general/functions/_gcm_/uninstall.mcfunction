# remove storage
    data remove storage general:gcm str
    data remove storage general:gcm str2
    data remove storage general:gcm pending
    data remove storage general:gcm execute

# remove command-blocks
    execute at 0000-0000-0000-0000-0001 run fill ~ ~ ~ ~1 ~ ~3 air
    execute at 0000-0000-0000-0000-0001 run fill ~3 ~ ~ ~3 ~ ~3 air
    
# kill entity
    kill 0000-0000-0000-0000-0001
    #kill 6733-7c1a-49e6-ae5b-844b

# remove forceload
    #forceload remove 29999968 20231968