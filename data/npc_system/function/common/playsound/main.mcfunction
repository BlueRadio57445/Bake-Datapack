data modify storage npc_system:common SoundPool set value []
data modify storage npc_system:common SoundPool set from entity @s data.SoundPool
execute as @s[tag=npc.idle] run data modify storage npc_system:common SoundPool set from entity @s data.Idle[0].SoundPool
data modify storage npc_system:common SoundOverrides set value []

execute as @s[tag=!npc.idle] unless data entity @s data{End:1b} run data modify storage npc_system:common SoundOverrides set from entity @s data.Dialogue.Extra.SoundOverrides
execute as @s[tag=!npc.idle] if data entity @s data{End:1b} run data modify storage npc_system:common SoundOverrides set from entity @s data.Exit.Extra.SoundOverrides
execute if data storage npc_system:common SoundOverrides[] run function npc_system:common/playsound/override
execute as @s[tag=!npc.idle] unless data entity @s data{End:1b} run data modify entity @s data.Dialogue.Extra.SoundOverrides set from storage npc_system:common SoundOverrides
execute as @s[tag=!npc.idle] if data entity @s data{End:1b} run data modify entity @s data.Exit.Extra.SoundOverrides set from storage npc_system:common SoundOverrides

execute store result storage npc_system:common Sound.pool_size int 1 if data storage npc_system:common SoundPool[]
execute unless data storage npc_system:common Sound{pool_size:0} unless data storage npc_system:common Sound{pool_size:1} run function npc_system:common/playsound/shuffle with storage npc_system:common Sound

execute if data storage npc_system:common SoundPool[] unless data storage npc_system:common SoundPool[0].setting run data modify storage npc_system:common SoundPool[0].setting set value {}
execute if data storage npc_system:common SoundPool[] at @s run function npc_system:common/playsound/process with storage npc_system:common SoundPool[0]
execute unless data storage npc_system:common SoundPool[] at @s run function npc_system:common/playsound/process {id:"minecraft:entity.villager.ambient",setting:{}}
