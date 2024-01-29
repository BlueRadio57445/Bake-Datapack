execute unless score $hunger_cave.monster quest.state matches 3 run scoreboard players add $system quest.version 1
scoreboard players set $hunger_cave.monster quest.state 3
scoreboard players operation @a quest.version = $system quest.version
advancement grant @a from quest:hunger_cave/monster/start
kill @e[tag=npc.hunger_cave.monster]