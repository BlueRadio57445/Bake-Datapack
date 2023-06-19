advancement revoke @s only npc:demo/howhow_next
tag @e[tag=npc.demo.howhow] add npc.this
function npc_system:common/next
execute if score @s npc.state matches 3 run data modify storage npc:demo howhow.Normal set from entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.TraderNormal
tag @e[tag=npc.this] remove npc.this 
