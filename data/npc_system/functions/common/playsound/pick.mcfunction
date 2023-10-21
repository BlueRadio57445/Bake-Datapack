$data modify storage npc_system:common Sound.temp set from entity @s data.SoundPool[$(index)]
$data remove entity @s data.SoundPool[$(index)]
data modify entity @s data.SoundPool prepend from storage npc_system:common Sound.temp
