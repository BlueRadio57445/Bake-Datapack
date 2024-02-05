execute as @e[type=minecraft:player,scores={effects.died=1..}] run function effects:player_died
execute as @a[advancements={effects:strong_gravity/fall=true}] run function effects:strong_gravity/player_fall
execute as @e[type=#minecraft:mobs,scores={effects.strong_gravity.duration=1..}] as @s[type=!minecraft:player] run function effects:strong_gravity/mobs_fall
execute if entity @e[limit=1,scores={effects.strong_gravity.duration=1..}] as @e[type=#minecraft:projectiles,tag=!effects.projectile.hit_ground] run function effects:strong_gravity/projectile_fall

execute as @a[scores={effects.fire.added_max_health=0}] run attribute @s minecraft:generic.max_health modifier remove 00007000-0000-7000-0000-700000007000
scoreboard players reset @a[scores={effects.fire.added_max_health=0}] effects.fire.added_max_health
scoreboard players remove @a[scores={effects.fire.added_max_health=1..}] effects.fire.added_max_health 1
