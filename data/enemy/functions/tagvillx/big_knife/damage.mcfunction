#
execute positioned ^ ^ ^3 run playsound minecraft:item.trident.thunder master @a[distance=..7] ~ ~ ~ 1 2
execute positioned ^ ^ ^3 run playsound minecraft:block.anvil.land master @a[distance=..7] ~ ~ ~ 1 1



execute positioned ^ ^ ^2 as @a[dx=0,dy=0,dz=0] run damage @s 15 arrow by @e[tag=big_knife,limit=1]
execute positioned ^ ^ ^3 as @a[dx=0,dy=0,dz=0] run damage @s 15 arrow by @e[tag=big_knife,limit=1]
execute positioned ^ ^ ^4 as @a[dx=0,dy=0,dz=0] run damage @s 15 arrow by @e[tag=big_knife,limit=1]
execute positioned ^ ^ ^5 as @a[dx=0,dy=0,dz=0] run damage @s 15 arrow by @e[tag=big_knife,limit=1]
execute positioned ^ ^ ^6 as @a[dx=0,dy=0,dz=0] run damage @s 15 arrow by @e[tag=big_knife,limit=1]
execute positioned ^ ^ ^7 as @a[dx=0,dy=0,dz=0] run damage @s 15 arrow by @e[tag=big_knife,limit=1]
execute positioned ^ ^ ^8 as @a[dx=0,dy=0,dz=0] run damage @s 15 arrow by @e[tag=big_knife,limit=1]

execute positioned ^ ^ ^2 as @a[dx=0,dy=0,dz=0] run function general:utils/damage_item {slot:"armor.head",damage:20}
execute positioned ^ ^ ^3 as @a[dx=0,dy=0,dz=0] run function general:utils/damage_item {slot:"armor.head",damage:20}
execute positioned ^ ^ ^4 as @a[dx=0,dy=0,dz=0] run function general:utils/damage_item {slot:"armor.head",damage:20}
execute positioned ^ ^ ^5 as @a[dx=0,dy=0,dz=0] run function general:utils/damage_item {slot:"armor.head",damage:20}
execute positioned ^ ^ ^6 as @a[dx=0,dy=0,dz=0] run function general:utils/damage_item {slot:"armor.head",damage:20}
execute positioned ^ ^ ^7 as @a[dx=0,dy=0,dz=0] run function general:utils/damage_item {slot:"armor.head",damage:20}
execute positioned ^ ^ ^8 as @a[dx=0,dy=0,dz=0] run function general:utils/damage_item {slot:"armor.head",damage:20}

#
execute positioned ^.5 ^ ^6 as @a[dx=0,dy=0,dz=0] run damage @s 15 arrow by @e[tag=big_knife,limit=1]
execute positioned ^.5 ^ ^7 as @a[dx=0,dy=0,dz=0] run damage @s 15 arrow by @e[tag=big_knife,limit=1]
execute positioned ^.5 ^ ^8 as @a[dx=0,dy=0,dz=0] run damage @s 15 arrow by @e[tag=big_knife,limit=1]

execute positioned ^.5 ^ ^6 as @a[dx=0,dy=0,dz=0] run function general:utils/damage_item {slot:"armor.head",damage:20}
execute positioned ^.5 ^ ^7 as @a[dx=0,dy=0,dz=0] run function general:utils/damage_item {slot:"armor.head",damage:20}
execute positioned ^.5 ^ ^8 as @a[dx=0,dy=0,dz=0] run function general:utils/damage_item {slot:"armor.head",damage:20}
#
execute positioned ^-.5 ^ ^6 as @a[dx=0,dy=0,dz=0] run damage @s 15 arrow by @e[tag=big_knife,limit=1]
execute positioned ^-.5 ^ ^7 as @a[dx=0,dy=0,dz=0] run damage @s 15 arrow by @e[tag=big_knife,limit=1]
execute positioned ^-.5 ^ ^8 as @a[dx=0,dy=0,dz=0] run damage @s 15 arrow by @e[tag=big_knife,limit=1]

execute positioned ^-.5 ^ ^6 as @a[dx=0,dy=0,dz=0] run function general:utils/damage_item {slot:"armor.head",damage:20}
execute positioned ^-.5 ^ ^7 as @a[dx=0,dy=0,dz=0] run function general:utils/damage_item {slot:"armor.head",damage:20}
execute positioned ^-.5 ^ ^8 as @a[dx=0,dy=0,dz=0] run function general:utils/damage_item {slot:"armor.head",damage:20}