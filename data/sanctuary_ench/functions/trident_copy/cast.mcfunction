execute positioned ~ ~1.6 ~ run summon minecraft:item_display ^ ^ ^1 {Tags:["trident_bullet","trident_bullet_new"],item:{id:"trident",Count:1b},teleport_duration:1,item_display:"gui"}
execute positioned ~ ~1.6 ~ as @e[tag=trident_bullet_new] run tp @s ^ ^ ^1 ~ ~

execute as @e[type=item_display,tag=trident_bullet_new] store result score @s s_ench.init_timestamp run schedule function sanctuary_ench:trident_copy/bullet/init_anmition 2t append
tag @e[tag=trident_bullet_new] remove trident_bullet_new
playsound minecraft:item.trident.throw master @a[distance=..5] ~ ~ ~ 0.75 2