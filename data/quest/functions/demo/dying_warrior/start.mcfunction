scoreboard players set $demo.dying_warrior quest.state 1
scoreboard players add $system quest.version 1
scoreboard players operation @a quest.version = $system quest.version
advancement grant @a only quest:demo/dying_warrior/start
