scoreboard players reset @a boss.death_in_boss
tag @a[distance=..30] add bossfight_0

bossbar add boss:disaster_starver "災厄餓死鬼"
bossbar set boss:disaster_starver color yellow
bossbar set boss:disaster_starver max 200
bossbar set boss:disaster_starver visible true
bossbar set boss:disaster_starver players @a[tag=bossfight_0]
gamerule doImmediateRespawn true

execute at @a[tag=bossfight_0] run playsound minecraft:entity.ender_dragon.growl master @p ~ ~ ~

function boss:disaster_starver/summon
function boss:disaster_starver/tick