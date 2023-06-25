# setup scoreboard
    scoreboard objectives add general.gcm_var dummy

# setup storage
    #data modify storage general:gcm str set value []
    data modify storage general:gcm pending set value []
    data modify storage general:gcm execute set value []

# loading chunk & setup processor
    #summon item_display 0.5 -1 0.5 {CustomName:'[""]',Tags:["general.gcm.op"],UUID:[I;0,0,0,1],item:{id:"book",Count:1,tag:{}},transformation:[0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f]}
    #execute as 0000-0000-0000-0000-0001 at @s run function general:_gcm_/flattener/setup
    #execute as 0000-0000-0000-0000-0001 at @s positioned ~3 ~ ~ run function general:_gcm_/executor/setup
    kill @e[tag=general.gcm.op]
    schedule function general:_gcm_/setup_1 3t
