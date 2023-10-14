scoreboard players remove @a[scores={knowledge.air_run=1..}] knowledge.air_run 1

effect give @a[scores={knowledge.air_run=1..}] jump_boost 2 3 true
effect give @a[scores={knowledge.air_run=1..}] speed 2 3 true

execute at @a[scores={knowledge.air_run=1..}] run particle firework ~ ~ ~ 0.1 0.1 0.1 0.1 20
