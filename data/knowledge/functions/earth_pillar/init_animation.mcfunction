execute store result score $now general.object.init_timestamp run time query gametime
execute as @e[type=interaction,tag=earth_pillar] if score @s general.object.init_timestamp = $now general.object.init_timestamp on passengers run function knowledge:earth_pillar/animation
