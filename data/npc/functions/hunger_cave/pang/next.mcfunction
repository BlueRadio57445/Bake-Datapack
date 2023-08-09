advancement revoke @s only npc:hunger_cave/pang_next

tag @e[tag=npc.hunger_cave.pang] add npc.this
function npc_system:common/next

execute if score @s npc.state matches 3 run data modify storage npc:hunger_cave pang.TraderNormal set from entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.TraderNormal
execute if score @s npc.trader_interpret matches 1 run data modify storage npc:hunger_cave pang.Buy set from entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Buy
execute if score @s npc.trader_interpret matches 1 run data modify storage npc:hunger_cave pang.Sell set from entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Sell
scoreboard players reset @s npc.trader_interpret

tag @e[tag=npc.this] remove npc.this
