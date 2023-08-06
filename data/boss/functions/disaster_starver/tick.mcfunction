# 這是用schedule做的遞迴
schedule function boss:disaster_starver/tick 1t

function boss:disaster_starver/bossbar
function boss:disaster_starver/death
execute at @a[gamemode=!spectator,tag=bossfight_0] if loaded ~ ~ ~ unless entity @e[tag=boss.disaster_starver] run function boss:disaster_starver/victory

# Boss的AI

scoreboard players add @e[tag=boss.disaster_starver] boss.time0 1

execute as @e[tag=boss.disaster_starver,scores={boss.time0=100},tag=!boss.casting] at @s run function boss:disaster_starver/skill2/cast
execute as @e[tag=boss.disaster_starver,scores={boss.time0=200},tag=!boss.casting] at @s run function boss:disaster_starver/skill3/cast
execute as @e[tag=boss.disaster_starver,scores={boss.time0=300},tag=!boss.casting] at @s run function boss:disaster_starver/skill4/cast
execute as @e[tag=boss.disaster_starver,scores={boss.time0=450},tag=!boss.casting] at @s run function boss:disaster_starver/skill5/cast
execute as @e[tag=boss.disaster_starver,scores={boss.time0=550},tag=!boss.casting] at @s run function boss:disaster_starver/skill1/cast

scoreboard players set @e[tag=boss.disaster_starver,scores={boss.time0=560}] boss.time0 0

execute as @e[tag=boss.disaster_starver,tag=!boss.casting] at @s align xyz if block ~ ~-1 ~ air if block ~ ~-2 ~ air run function boss:disaster_starver/skill5/cast

# 每個招式的tick
execute as @e[type=husk,tag=disaster_starver.tping] at @s run function boss:disaster_starver/skill2/tick
execute as @e[type=husk,tag=disaster_starver.spiting] at @s run function boss:disaster_starver/skill3/tick
execute as @e[type=husk,tag=disaster_starver.clawing] at @s run function boss:disaster_starver/skill4/tick
execute as @e[type=husk,tag=disaster_starver.jumping] at @s run function boss:disaster_starver/skill5/tick