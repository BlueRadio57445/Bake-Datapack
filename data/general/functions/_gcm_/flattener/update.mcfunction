    tag @a remove general.gcm_this
# pop pending raw JSON string
    data modify entity 0000-0000-0000-0000-0001 CustomName set from storage general:gcm pending[0].command
    execute store result score $temp general.id run data get storage general:gcm pending[0].id
    execute if score $temp general.id matches 0.. if data storage general:gcm pending[0].id as @a if score @s general.id = $temp general.id run tag @s add general.gcm_this
    data remove storage general:gcm pending[0]
    execute unless data storage general:gcm pending[0] run setblock ~1 ~ ~ chain_command_block[facing=north]
