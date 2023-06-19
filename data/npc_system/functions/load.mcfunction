scoreboard objectives add npc.user dummy
scoreboard objectives add npc.occupied dummy
scoreboard objectives add npc.state dummy
scoreboard objectives add npc.quest dummy
scoreboard objectives add npc.trader dummy
scoreboard objectives add npc.option dummy
scoreboard objectives add npc.look_option dummy
scoreboard objectives add npc.reset dummy

# 無碰撞隊伍
team add npc.trader
team modify npc.trader collisionRule never

# 暫時放在這裡
function npc:demo/radio/dialouges
function npc:demo/endsky/dialouges
function npc:demo/howhow/dialouges
