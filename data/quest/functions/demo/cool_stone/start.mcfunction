scoreboard players set $demo.cool_stone quest.state 1
scoreboard players add $system quest.version 1
scoreboard players operation @a quest.version = $system quest.version
advancement grant @a only quest:demo/cool_stone/start
