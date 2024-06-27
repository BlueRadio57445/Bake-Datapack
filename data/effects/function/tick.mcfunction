execute as @e[type=minecraft:player,scores={effects.died=1..}] run function effects:player_died
execute as @e[type=#minecraft:flying_mobs,scores={effects.strong_gravity.duration=1..}] run function effects:strong_gravity/mobs_fall
execute if entity @e[limit=1,scores={effects.strong_gravity.duration=1..}] as @e[type=#minecraft:projectiles,tag=!effects.projectile.hit_ground] run function effects:strong_gravity/projectile_fall

kill @e[type=minecraft:silverfish,tag=effects.true_fire.target,tag=!effects.true_fire.new_target]
tag @e[type=minecraft:silverfish,tag=effects.true_fire.new_target] remove effects.true_fire.new_target
