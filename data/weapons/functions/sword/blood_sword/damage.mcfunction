execute unless score @s weapons.use_health matches 80..99 run attribute @s minecraft:generic.attack_damage modifier remove 00000000-0000-0000-0000-000000000301
execute unless score @s weapons.use_health matches 50..79 run attribute @s minecraft:generic.attack_damage modifier remove 00000000-0000-0000-0000-000000000302
execute unless score @s weapons.use_health matches 30..49 run attribute @s minecraft:generic.attack_damage modifier remove 00000000-0000-0000-0000-000000000303
execute unless score @s weapons.use_health matches 1..29 run attribute @s minecraft:generic.attack_damage modifier remove 00000000-0000-0000-0000-000000000304

execute if score @s weapons.use_health matches 80..99 run attribute @s minecraft:generic.attack_damage modifier add 00000000-0000-0000-0000-000000000301 "attack" 1.5 add
execute if score @s weapons.use_health matches 50..79 run attribute @s minecraft:generic.attack_damage modifier add 00000000-0000-0000-0000-000000000302 "attack" 2 add
execute if score @s weapons.use_health matches 30..49 run attribute @s minecraft:generic.attack_damage modifier add 00000000-0000-0000-0000-000000000303 "attack" 3 add
execute if score @s weapons.use_health matches 1..29 run attribute @s minecraft:generic.attack_damage modifier add 00000000-0000-0000-0000-000000000304 "attack" 4 add
