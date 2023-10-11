$data modify storage npc_system:common Sound set value {id:"$(id)"}
$data modify storage npc_system:common Sound merge value $(setting)
execute unless data storage npc_system:common Sound.volume run data modify storage npc_system:common Sound.volume set value 1d
execute unless data storage npc_system:common Sound.pitch run data modify storage npc_system:common Sound.pitch set value 1d
execute unless data storage npc_system:common Sound.minVolume run data modify storage npc_system:common Sound.minVolume set value 1d
function npc_system:common/playsound/play with storage npc_system:common Sound

execute store result storage npc_system:common Sound.pool_size int 1 if data entity @s data.SoundPool[]
execute unless data storage npc_system:common Sound{pool_size:0} unless data storage npc_system:common Sound{pool_size:1} run function npc_system:common/playsound/shuffle with storage npc_system:common Sound