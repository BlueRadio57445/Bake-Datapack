# executed by marker
execute if data entity @s data.SoundPool[] at @s run function npc_system:common/playsound/process with entity @s data.SoundPool[0]
execute unless data entity @s data.SoundPool[] at @s run function npc_system:common/playsound/process {id:"minecraft:entity.villager.ambient",setting:{}}
# setting:{} 至少需要這樣填，內容留空的話代表預設

data merge entity @e[type=minecraft:text_display,limit=1,tag=npc.text,tag=npc.this] {text:'{"color":"black","text":"","extra":[{"nbt":"data.Dialogue.Texts[0]","entity":"@e[limit=1,type=minecraft:marker,tag=npc.this]","interpret":true}]}',transformation:{scale:[1.0f,1.0f,1.0f]}}
data remove entity @s data.Dialogue.Texts[0]
execute as @a[tag=npc.user] run function npc_system:actionbar/state_1
