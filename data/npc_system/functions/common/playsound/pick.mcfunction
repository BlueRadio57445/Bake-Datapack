$data modify storage npc_system:common Sound.temp set from storage npc_system:common SoundPool[$(index)]
$data remove storage npc_system:common SoundPool[$(index)]
data modify storage npc_system:common SoundPool prepend from storage npc_system:common Sound.temp
