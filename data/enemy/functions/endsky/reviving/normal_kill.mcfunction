tag @s add this
execute as @e[type=minecraft:marker,tag=enemy.reviving.marker] on vehicle if data entity @s {Health:0.0f} run function enemy:endsky/reviving/normal_kill_check
tag @a[tag=this] remove this
advancement revoke @s only enemy:endsky/reviving/normal_kill
