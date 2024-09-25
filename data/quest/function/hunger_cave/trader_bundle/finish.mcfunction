scoreboard players set $hunger_cave.trader_bundle quest.state 2
scoreboard players add $system quest.version 1
scoreboard players operation @a quest.version = $system quest.version
advancement grant @a only quest:hunger_cave/trader_bundle/start
advancement grant @a only quest:hunger_cave/trader_bundle/finish

clear @s prismarine_crystals[custom_data={trader_bundle:{}}]
function npc:hunger_cave/pang/dialogues_trader