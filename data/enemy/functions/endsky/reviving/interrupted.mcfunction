advancement revoke @s only enemy:endsky/reviving/interrupted
tag @s add this
execute as @e[type=minecraft:interaction,tag=enemy.reviving.hitbox] run function enemy:endsky/reviving/check_hit
tag @s remove this
