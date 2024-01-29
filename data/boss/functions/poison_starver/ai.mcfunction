# Boss的AI

scoreboard players add @s boss.time0 1
execute store result score @s boss.health run data get entity @s Health

execute as @s[scores={boss.time0=70},tag=!boss.casting] at @s run function boss:poison_starver/skill2/cast
execute as @s[scores={boss.time0=140},tag=!boss.casting] at @s run function boss:poison_starver/skill8/cast
execute as @s[scores={boss.time0=210},tag=!boss.casting] at @s run function boss:poison_starver/skill6/cast
execute as @s[scores={boss.time0=280..300},tag=!boss.casting] at @s run function boss:poison_starver/skill7/cast
execute as @s[scores={boss.time0=350},tag=!boss.casting] at @s run function boss:poison_starver/skill4/cast
execute as @s[scores={boss.time0=420},tag=!boss.casting] at @s run function boss:poison_starver/skill5/cast

scoreboard players set @s[scores={boss.time0=560}] boss.time0 0

execute as @s[tag=!boss.casting] at @s align xyz if block ~ ~-1 ~ air if block ~ ~-2 ~ air run function boss:poison_starver/skill7/cast
execute as @s[tag=!boss.casting] at @s if block ~ ~ ~ lava run function boss:poison_starver/skill2/cast

# 第二階段
scoreboard players set @s[scores={boss.stage=1,boss.health=..125}] boss.stage 2

# 每個招式的tick
execute as @s[tag=poison_starver.tping] at @s run function boss:poison_starver/skill2/tick
execute as @s[tag=poison_starver.spiting] at @s run function boss:poison_starver/skill3/tick
execute as @s[tag=poison_starver.spread_spiting] at @s run function boss:poison_starver/skill4/tick
execute as @s[tag=poison_starver.line_spiting] at @s run function boss:poison_starver/skill5/tick
execute as @s[tag=poison_starver.clawing] at @s run function boss:poison_starver/skill6/tick
execute as @s[tag=poison_starver.jumping] at @s run function boss:poison_starver/skill7/tick
execute as @s[tag=poison_starver.massy_bubble] at @s run function boss:poison_starver/skill8/tick