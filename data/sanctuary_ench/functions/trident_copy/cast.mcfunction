execute positioned ~ ~1.6 ~ run summon minecraft:item_display ^ ^ ^1 {Tags:["trident_bullet","trident_bullet_new"],item:{id:"trident",Count:1b},transformation:{translation:[0f,0f,0f],scale:[1f,1f,1f],left_rotation:[0f,0f,0f,1.0f],right_rotation:[ -0.653f, 0.271f, 0.653f, -0.271f]},interpolation_start:0,interpolation_duration:8,teleport_duration:1}
execute positioned ~ ~1.6 ~ as @e[tag=trident_bullet_new] run tp @s ^ ^ ^1 ~ ~
tag @e[tag=trident_bullet_new] remove trident_bullet_new
playsound minecraft:item.trident.throw master @a[distance=..5] ~ ~ ~ 0.75 2