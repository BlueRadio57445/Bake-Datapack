execute if score $system npc.timer = $system npc.timer run scoreboard players add $system npc.timer 20
execute unless score $system npc.timer = $system npc.timer store result score $system npc.timer run time query gametime

execute as @e[type=minecraft:marker,scores={npc.idle=0..1}] if score @s npc.timer < $system npc.timer run function npc_system:idle/start
execute as @e[type=minecraft:marker,scores={npc.idle=-1}] run function npc_system:idle/start
execute as @e[type=minecraft:marker,scores={npc.idle=0}] if score @s npc.timer = $system npc.timer run function npc_system:idle/show
execute as @e[type=minecraft:marker,scores={npc.idle=1}] if score @s npc.timer = $system npc.timer run function npc_system:idle/clear

schedule function npc_system:idle/check 20t
