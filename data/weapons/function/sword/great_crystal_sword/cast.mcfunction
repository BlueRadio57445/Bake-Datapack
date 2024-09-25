attribute @s minecraft:generic.armor modifier add weapons:great_crystal_sword_remove_armor -1 add_multiplied_total
tag @s add weapons.great_crystal_sword.remove_armor
playsound minecraft:entity.item.break master @a[distance=..7] ~ ~ ~ 1 1
particle minecraft:item{item:"iron_helmet"} ~ ~ ~ .5 .5 .5 0.3 70
particle minecraft:item{item:"iron_helmet"} ~ ~1 ~ .5 .5 .5 0.3 70
