execute as @e[tag=centipede.can_be_attack] at @s run particle smoke ~ ~ ~ 0.05 0.05 0.05 0.1 300 force
execute as @e[tag=centipede.can_be_attack] at @s run playsound entity.creeper.primed ambient @a ~ ~ ~ 100 1 1
tag @e remove centipede.can_be_attack
effect clear @e glowing
execute as @e[tag=centipede.can_be_attack] run data modify entity @s Invulnerable set value 1b
tag @e[tag=centipede.body,limit=1,sort=random,type=guardian] add centipede.can_be_attack
execute as @e[tag=centipede.can_be_attack] run data modify entity @s Invulnerable set value 0b
effect give @e[tag=centipede.can_be_attack] glowing infinite 5 true
execute as @e[tag=centipede.can_be_attack] at @s run particle smoke ~ ~ ~ 0.05 0.05 0.05 0.1 300 force