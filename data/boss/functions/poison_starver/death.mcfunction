execute as @a[scores={boss.death_in_boss=1..},tag=poison_starver.player] run gamemode spectator @s
execute if entity @a unless entity @a[gamemode=!spectator,tag=poison_starver.player] run function boss:poison_starver/failed
