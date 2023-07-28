scoreboard players set $hunger_cave.cool_stone quest.state 3
scoreboard players add $system quest.version 1
scoreboard players operation @a quest.version = $system quest.version
advancement grant @a only quest:hunger_cave/cool_stone/finish

give @a bundle
give @a heart_of_the_sea