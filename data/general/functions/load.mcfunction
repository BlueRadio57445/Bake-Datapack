scoreboard objectives add general.id dummy
scoreboard objectives add general.team dummy
scoreboard objectives add general.shareQuest dummy

#若此記分板為空值，將其設為0
execute unless score playerCount general.id = playerCount general.id run scoreboard players set playerCount general.id 0

#設定區
scoreboard players set $system general.shareQuest 0