advancement revoke @s only npc_system:trader/option_e
tag @s add npc.user
scoreboard players operation $temp npc.user = @s general.id
execute as @e[tag=npc.tag] if score @s npc.user = $temp npc.user run tag @s add npc.this
execute store success score $temp npc.state run data modify entity @e[limit=1,type=minecraft:interaction,tag=npc.this,tag=npc.trader_e] interaction.player set from entity @s UUID
execute if score $temp npc.state matches 0 run function npc_system:trader/option/select_e
tag @e[tag=npc.this] remove npc.this
tag @s remove npc.user
