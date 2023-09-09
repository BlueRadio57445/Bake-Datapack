advancement revoke @s only weapons:hammer/hammer_attack

tag @s[] add this
execute at @s as @e[nbt={HurtTime:10s},type=#mobs] run function enemy:check_attacker
execute at @e[tag=attacked] run particle crit ~ ~1.1 ~ 0.2 0.2 0.2 0.5 25
execute at @e[tag=attacked] run playsound entity.player.attack.crit master @a[distance=..10] ~ ~ ~
tag @e[tag=attacked] remove attacked
tag @s remove this