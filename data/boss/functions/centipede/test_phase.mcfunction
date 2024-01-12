execute if score $health centipede.damage matches 90 unless score $phase centipede.damage matches 1 run function boss:centipede/change_phase
execute if score $health centipede.damage matches 80 if score $phase centipede.damage matches 1 run function boss:centipede/change_phase
execute if score $health centipede.damage matches 70 if score $phase centipede.damage matches 2 run function boss:centipede/change_phase
execute if score $health centipede.damage matches 60 if score $phase centipede.damage matches 3 run function boss:centipede/change_phase
execute if score $health centipede.damage matches 50 if score $phase centipede.damage matches 4 run function boss:centipede/change_phase
execute if score $health centipede.damage matches 40 if score $phase centipede.damage matches 5 run function boss:centipede/change_phase
execute if score $health centipede.damage matches 30 if score $phase centipede.damage matches 6 run function boss:centipede/change_phase
execute if score $health centipede.damage matches 20 if score $phase centipede.damage matches 7 run function boss:centipede/change_phase
execute if score $health centipede.damage matches 10 if score $phase centipede.damage matches 8 run function boss:centipede/change_phase
schedule function boss:centipede/test_phase 1t