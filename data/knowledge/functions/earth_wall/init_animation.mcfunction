execute store result score $now knowledge.init_timestamp run time query gametime
execute as @e[type=minecraft:block_display,tag=earth_wall] if score @s knowledge.init_timestamp = $now knowledge.init_timestamp run data merge entity @s {interpolation_duration:10,start_interpolation:0,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
