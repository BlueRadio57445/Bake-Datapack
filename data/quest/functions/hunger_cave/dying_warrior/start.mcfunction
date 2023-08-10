scoreboard players set $hunger_cave.dying_warrior quest.state 1
scoreboard players add $system quest.version 1
scoreboard players operation @a quest.version = $system quest.version
advancement grant @a only quest:hunger_cave/dying_warrior/start
