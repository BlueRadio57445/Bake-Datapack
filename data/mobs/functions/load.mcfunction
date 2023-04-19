scoreboard objectives add mobs.id dummy
scoreboard objectives add mobs.y_displacement dummy

execute unless score $system mobs.id = $system mobs.id run scoreboard players set $system mobs.id 0
