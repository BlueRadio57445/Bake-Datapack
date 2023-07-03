# 這是用schedule做的遞迴
schedule function boss:disaster_starver/tick 1t

function boss:disaster_starver/bossbar

function boss:disaster_starver/death

execute unless entity @e[tag=boss.disaster_starver] run function boss:disaster_starver/victory

# Boss的AI

scoreboard players add @e[tag=boss.disaster_starver] boss.time0 1

execute as @e[tag=boss.disaster_starver,scores={boss.time0=150}] at @s run function boss:disaster_starver/skill2/cast
#execute as @e[tag=boss.disaster_starver,scores={boss.time0=300}] at @s run function boss:disaster_starver/skill3/cast
execute as @e[tag=boss.disaster_starver,scores={boss.time0=300}] at @s run function boss:disaster_starver/skill4/cast
execute as @e[tag=boss.disaster_starver,scores={boss.time0=450}] at @s run function boss:disaster_starver/skill5/cast

#execute as @e[tag=boss.disaster_starver,scores={boss.time0=100}] at @s run function boss:disaster_starver/skill1/cast
#execute as @e[tag=boss.disaster_starver,scores={boss.time0=300}] at @s run function boss:disaster_starver/skill2/cast
#execute as @e[tag=boss.disaster_starver,scores={boss.time0=400}] at @s run function boss:disaster_starver/skill3/cast
#execute as @e[tag=boss.disaster_starver,scores={boss.time0=500}] at @s run function boss:disaster_starver/skill2/cast
scoreboard players set @e[tag=boss.disaster_starver,scores={boss.time0=460}] boss.time0 0
