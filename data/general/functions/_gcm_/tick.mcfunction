# this tick function needs to run after all others
# turn-on String Flattening Processor if any pending sent
    execute if data storage general:gcm pending.once[0] at 0000-0000-0000-0000-0001 run function general:_gcm_/flattener/on
    execute if data storage general:gcm execute.once[0] at 0000-0000-0000-0000-0001 run function general:_gcm_/executor/once/on
