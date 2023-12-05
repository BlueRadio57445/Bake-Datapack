execute store result score $soundOverride npc.count run data get storage npc_system:common SoundOverrides[0].index
execute if score @s npc.count = $soundOverride npc.count run data modify storage npc_system:common SoundPool set from storage npc_system:common SoundOverrides[0].pool
data remove storage npc_system:common SoundOverrides[0]
execute if score @s npc.count > $soundOverride npc.count if data storage npc_system:common SoundOverrides[] run function npc_system:common/playsound/override
