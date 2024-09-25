execute as @s[scores={npc.idle=0..1}] if score @s npc.timer < $gametime general.utils run function npc_system:idle/start
execute as @s[scores={npc.idle=-1}] run function npc_system:idle/start
execute as @s[scores={npc.idle=0}] if score @s npc.timer = $gametime general.utils run function npc_system:idle/show
execute as @s[scores={npc.idle=1}] if score @s npc.timer = $gametime general.utils run function npc_system:idle/clear

schedule function npc_system:idle/check 20t
