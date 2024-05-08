execute on passengers if entity @s[tag=crab.claw] run data modify entity @s block_state.Name set value "yellow_glazed_terracotta"
execute on passengers if entity @s[tag=crab.claw.right] run data merge entity @s {transformation:{left_rotation:[0.74f,-0.19f,0.20f,0.61f]},interpolation_duration:4,start_interpolation:0}
execute on passengers if entity @s[tag=crab.claw.left] run data merge entity @s {transformation:{left_rotation:[0.74f,0.19f,-0.20f,0.61f]},interpolation_duration:4,start_interpolation:0}
scoreboard players set @s enemy.crab 0