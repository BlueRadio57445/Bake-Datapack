execute store result score $now knowledge.init_timestamp run time query gametime
execute as @e[type=interaction,tag=earth_pillar] if score @s knowledge.init_timestamp = $now knowledge.init_timestamp on passengers run function knowledge:earth_pillar/animation
