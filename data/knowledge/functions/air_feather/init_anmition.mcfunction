execute store result score $now general.object.init_timestamp run time query gametime
execute as @e[type=item_display,tag=air_feather] if score @s general.object.init_timestamp = $now general.object.init_timestamp run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{left_rotation:[-0.6412f,0.2935f,-0.641f,0.2934f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.2f,-0.5f]}}
