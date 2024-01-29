scoreboard objectives add npc.id dummy
scoreboard objectives add npc.split dummy
scoreboard objectives add npc.user dummy
scoreboard objectives add npc.occupied dummy
scoreboard objectives add npc.state dummy
scoreboard objectives add npc.idle dummy
scoreboard objectives add npc.count dummy
scoreboard objectives add npc.quest dummy
scoreboard objectives add npc.trader dummy
scoreboard objectives add npc.option dummy
scoreboard objectives add npc.look_option dummy
scoreboard objectives add npc.reset dummy
scoreboard objectives add npc.timer dummy

scoreboard objectives remove npc.trader_interpret

scoreboard players reset * npc.timer

# 無碰撞隊伍
team add npc.trader
team modify npc.trader collisionRule never

scoreboard players set @e[type=minecraft:marker,tag=npc.idle] npc.idle -1

#declare storage npc_system:common
#declare storage npc_system:trader
