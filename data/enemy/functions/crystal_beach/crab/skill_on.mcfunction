execute on passengers if entity @s[tag=crab.claw] run data modify entity @s block_state.Name set value "red_glazed_terracotta"
execute on passengers if entity @s[tag=crab.claw.right] run data merge entity @s {transformation:{left_rotation:[0.43f,-0.47f,0.14f,0.76f]},interpolation_duration:4,start_interpolation:0}
execute on passengers if entity @s[tag=crab.claw.left] run data merge entity @s {transformation:{left_rotation:[0.43f,0.47f,-0.14f,0.76f]},interpolation_duration:4,start_interpolation:0}
effect give @s strength 5 0 false