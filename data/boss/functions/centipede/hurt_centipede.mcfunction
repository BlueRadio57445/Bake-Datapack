advancement revoke @s only boss:centipede/hurt_centipede
scoreboard players remove $health centipede.damage 1
execute if score $health centipede.damage matches ..0 run function boss:centipede/kill_centipede