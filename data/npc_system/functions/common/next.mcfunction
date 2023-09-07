#execute if entity @e[limit=1,type=minecraft:marker,tag=npc.this,scores={npc.trader_interpret=-2}] run function npc_system:trader/interpret/update
tag @s add npc.user
scoreboard players set $next npc.state 1
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] run function npc_system:common/next_1
execute if score $next npc.state matches 0 run function npc_system:common/end
execute if score $next npc.state matches 2 at @e[limit=1,tag=npc.figure,tag=npc.this] run function npc_system:common/options
execute if score $next npc.state matches 3 at @e[limit=1,tag=npc.figure,tag=npc.this] rotated ~ 0 run function npc_system:trader/options
tag @a[tag=npc.user] remove npc.user
