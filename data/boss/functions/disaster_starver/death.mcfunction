execute as @a[scores={boss.death_in_boss=1..},tag=bossfight_0] run gamemode spectator @s
execute if entity @a unless entity @a[gamemode=!spectator,tag=bossfight_0] run function boss:disaster_starver/failed
