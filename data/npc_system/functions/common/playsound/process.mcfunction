$data modify storage npc_system:common Sound set value {id:"$(id)"}
$data modify storage npc_system:common Sound merge value $(setting)
execute unless data storage npc_system:common Sound.volume run data modify storage npc_system:common Sound.volume set value 1f
execute unless data storage npc_system:common Sound.pitch run data modify storage npc_system:common Sound.pitch set value 1f
execute unless data storage npc_system:common Sound.minVolume run data modify storage npc_system:common Sound.minVolume set value 0f
function npc_system:common/playsound/play with storage npc_system:common Sound
