# 這是用schedule做的遞迴
schedule function boss:disaster_starver/tick 1t

function boss:disaster_starver/bossbar
function boss:disaster_starver/death
execute at @a[gamemode=!spectator,tag=bossfight_0] if loaded ~ ~ ~ unless entity @e[tag=boss.disaster_starver] run function boss:disaster_starver/victory

execute as @e[type=husk,tag=boss.disaster_starver] at @s run function boss:disaster_starver/ai