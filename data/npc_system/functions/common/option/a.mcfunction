advancement revoke @s only npc_system:option/a
tag @s add npc.user
scoreboard players operation $temp npc.user = @s general.id
execute as @e[tag=npc.tag] if score @s npc.user = $temp npc.user run tag @s add npc.this
execute store success score $temp npc.state run data modify entity @e[limit=1,type=minecraft:interaction,tag=npc.this,tag=npc.option_a] interaction.player set from entity @s UUID
execute if score $temp npc.state matches 0 run function npc_system:common/option/select_a
