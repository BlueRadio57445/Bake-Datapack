execute store result bossbar boss:centipede.bossbar value run scoreboard players get $health centipede.damage
execute if score $phase centipede.damage matches 2 run scoreboard players set $barrage_phase centipede.ability 1
schedule function boss:centipede/health 1t