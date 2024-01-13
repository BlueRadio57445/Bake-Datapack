kill @e[tag=centipede.body]
bossbar remove boss:centipede.bossbar
scoreboard objectives remove centipede.damage
schedule clear boss:centipede/connect
schedule clear boss:centipede/health
schedule clear boss:centipede/test_ability
schedule clear boss:centipede/test_phase