# Boss的AI

scoreboard players add @s boss.time0 1

execute as @s[scores={boss.time0=100},tag=!boss.casting] at @s run function boss:disaster_starver/skill2/cast
execute as @s[scores={boss.time0=200},tag=!boss.casting] at @s run function boss:disaster_starver/skill3/cast
execute as @s[scores={boss.time0=300},tag=!boss.casting] at @s run function boss:disaster_starver/skill4/cast
execute as @s[scores={boss.time0=450},tag=!boss.casting] at @s run function boss:disaster_starver/skill5/cast
execute as @s[scores={boss.time0=550},tag=!boss.casting] at @s run function boss:disaster_starver/skill1/cast

scoreboard players set @s[scores={boss.time0=560}] boss.time0 0

execute as @s[tag=!boss.casting] at @s align xyz if block ~ ~-1 ~ air if block ~ ~-2 ~ air run function boss:disaster_starver/skill5/cast
execute as @s[tag=!boss.casting] at @s if block ~ ~ ~ lava run function boss:disaster_starver/skill2/cast

# 每個招式的tick
execute as @s[tag=disaster_starver.tping] at @s run function boss:disaster_starver/skill2/tick
execute as @s[tag=disaster_starver.spiting] at @s run function boss:disaster_starver/skill3/tick
execute as @s[tag=disaster_starver.clawing] at @s run function boss:disaster_starver/skill4/tick
execute as @s[tag=disaster_starver.jumping] at @s run function boss:disaster_starver/skill5/tick