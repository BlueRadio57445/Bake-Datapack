execute as @a[scores={boss.death_in_boss=1..},tag=bossfight_77] run gamemode spectator @s
execute if entity @a unless entity @a[gamemode=!spectator,tag=bossfight_77] run function boss:poison_starver/failed
