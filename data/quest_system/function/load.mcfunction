scoreboard objectives remove quest.item_check

scoreboard objectives add quest.state dummy
# 用於同步所有玩家的進度
scoreboard objectives add quest.version dummy

execute unless score $system quest.version = $system quest.version run scoreboard players set $system quest.version 0

function quest:demo/mysterious_stone/dialogue
