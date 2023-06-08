# 條列式同步所有任務進度(#

execute if score $demo.mysterious_stone quest.state matches 2.. run advancement grant @s only quest:demo/mysterious_stone/start
execute if score $demo.mysterious_stone quest.state matches 3.. run advancement grant @s only quest:demo/mysterious_stone/endsky
execute if score $demo.mysterious_stone quest.state matches 4 run advancement grant @s only quest:demo/mysterious_stone/finish
execute if score $demo.mysterious_stone quest.state matches 5 run advancement grant @s only quest:demo/mysterious_stone/finish-
execute if score $demo.mysterious_stone quest.state matches 6 run advancement grant @s only quest:demo/mysterious_stone/fail

scoreboard players operation @s quest.version = $system quest.version
