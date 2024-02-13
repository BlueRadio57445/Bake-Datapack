data merge entity @s {CustomName:'[{"text":"伏地魔"}]',HandDropChances:[0f],Tags:["tptptw.enemy","sand_lurker"],Health:40,Silent:0,Attributes:[{Name:"minecraft:generic.scale",Base:1d},{Base:0,Name:"minecraft:generic.knockback_resistance"},{Name:"minecraft:generic.follow_range",Base:50},{Name:"minecraft:generic.movement_speed",Base:0.32},{Name:"minecraft:generic.attack_damage",Base:1},{Name:"minecraft:generic.max_health",Base:40}]}
effect clear @s invisibility
item replace entity @s weapon.mainhand with iron_sword
execute on passengers run kill @s
playsound minecraft:block.sand.break master @a ~ ~ ~
playsound minecraft:block.sand.break master @a ~ ~ ~
playsound minecraft:block.sand.break master @a ~ ~ ~
playsound minecraft:block.sand.break master @a ~ ~ ~
playsound minecraft:block.sand.break master @a ~ ~ ~
particle block sand ~ ~1 ~ 0 1 0 1 30 force
particle block sand ~ ~1.9 ~ 0 1 0 1 30 force
