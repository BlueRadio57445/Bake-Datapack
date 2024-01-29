scoreboard players reset @a boss.death_in_boss
tag @a[distance=..30] add poison_starver.player
spawnpoint @a[distance=..30] ~ ~ ~
gamemode adventure @a[tag=poison_starver.player]

bossbar add boss:poison_starver "嘔噁餓死鬼"
bossbar set boss:poison_starver color green
bossbar set boss:poison_starver max 250
bossbar set boss:poison_starver visible true
bossbar set boss:poison_starver players @a[tag=poison_starver.player]
gamerule doImmediateRespawn true

scoreboard players set $poison_starver boss.count_down 3
function boss:poison_starver/count_down