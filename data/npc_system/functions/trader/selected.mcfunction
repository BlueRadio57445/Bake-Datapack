scoreboard players set @s npc.state 1
tp @e[type=minecraft:villager,tag=npc.option,tag=npc.this] ~ -100 ~
kill @e[tag=npc.option,tag=npc.this]
function npc_system:common/display_text
