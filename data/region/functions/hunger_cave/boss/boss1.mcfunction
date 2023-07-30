execute positioned -273 110 991 run function boss:disaster_starver/start
bossbar set boss:disaster_starver max 70
data merge entity @e[limit=1,tag=boss.disaster_starver] {Health:70f}