tag 00000000-0000-0000-0000-000000000b00 add centipede.barrage
scoreboard players set $barrage centipede.cd 0
scoreboard players set $line_barrage centipede.ability 0
execute if score $barrage_phase centipede.ability matches 0 run function boss:centipede/line_barrage