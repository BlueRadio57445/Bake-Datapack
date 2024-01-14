kill @e[tag=centipede.body]
kill @e[tag=centipede.barrage_datum]
bossbar remove boss:centipede.bossbar
scoreboard objectives remove centipede.damage
scoreboard objectives remove centipede.ability
scoreboard objectives remove centipede.cd
schedule clear boss:centipede/connect
schedule clear boss:centipede/health
schedule clear boss:centipede/test_ability
schedule clear boss:centipede/test_phase
schedule clear boss:centipede/sound