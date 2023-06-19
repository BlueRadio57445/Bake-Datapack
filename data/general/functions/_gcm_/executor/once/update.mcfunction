    tag @a remove general.gcm_this
    data modify block ~ ~ ~1 Command set from storage general:gcm execute.once[0].command
    execute store result score $temp general.id run data get storage general:gcm execute.once[0].id
    execute if score $temp general.id matches 0.. if data storage general:gcm execute.once[0].id as @a if score @s general.id = $temp general.id run tag @s add general.gcm_this
    data remove storage general:gcm execute.once[0]
    execute unless data storage general:gcm execute.once[0] run setblock ~ ~ ~1 chain_command_block[facing=south] replace