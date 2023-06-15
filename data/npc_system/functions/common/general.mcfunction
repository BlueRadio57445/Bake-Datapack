tag @s add npc.user
scoreboard players operation $temp npc.user = @s general.id
execute as @e[tag=npc.tag] if score @s npc.user = $temp npc.user run tag @s add npc.this
execute as @e[limit=1,tag=npc.figure,tag=npc.this,distance=..16] at @s anchored eyes facing entity @a[limit=1,tag=npc.user] eyes on passengers positioned as @s run tp @s[type=minecraft:marker] ~ ~ ~ ~ ~
execute as @e[limit=1,tag=npc.figure,tag=npc.this,distance=..16] at @s anchored eyes rotated as @e[limit=1,type=minecraft:marker,tag=npc.this,distance=..16] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute as @e[limit=1,type=minecraft:armor_stand,tag=npc.figure,tag=npc.this,distance=..16] run data modify entity @s Pose.Head set value [0.1f,0f,0f]
execute as @e[limit=1,type=minecraft:armor_stand,tag=npc.figure,tag=npc.this,distance=..16] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
title @s[scores={npc.state=1}] actionbar {"color":"aqua","text":"對話中，點擊NPC以繼續對話"}
execute as @s[scores={npc.state=2}] run function npc_system:common/selecting
execute as @s[scores={npc.state=3}] run function npc_system:trader/selecting
execute unless entity @e[type=minecraft:interaction,tag=npc.this,distance=..10] run function npc_system:common/leave
tag @s remove npc.user
tag @e[tag=npc.this] remove npc.this
