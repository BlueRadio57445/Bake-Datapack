# 這是用schedule做的遞迴
schedule function boss:poison_starver/tick 1t

function boss:poison_starver/bossbar
function boss:poison_starver/death
execute at @a[gamemode=!spectator,tag=poison_starver.player] if loaded ~ ~ ~ unless entity @e[tag=boss.poison_starver] run function boss:poison_starver/victory

execute as @e[type=husk,tag=boss.poison_starver] at @s run function boss:poison_starver/ai
execute as @e[type=#object,tag=poison_starver.spread_spit] at @s run function boss:poison_starver/spread_spit/tick
execute as @e[type=#object,tag=poison_starver.line_spit] at @s run function boss:poison_starver/line_spit/tick
execute as @e[type=#object,tag=poison_starver.poison_bubble] at @s run function boss:poison_starver/poison_bubble/tick