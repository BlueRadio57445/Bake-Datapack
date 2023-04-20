scoreboard players set $demo.mysterious_stone quest.state 6
scoreboard players add $system quest.version 1
scoreboard players operation @a quest.version = $system quest.version
advancement grant @a only quest:demo/mysterious_stone/fail
