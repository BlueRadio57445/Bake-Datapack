execute as @a unless predicate weapons:blood_sword/select run attribute @s minecraft:generic.attack_damage modifier remove 00000000-0000-0000-0000-000000000301
execute as @a unless predicate weapons:blood_sword/select run attribute @s minecraft:generic.attack_damage modifier remove 00000000-0000-0000-0000-000000000302
execute as @a unless predicate weapons:blood_sword/select run attribute @s minecraft:generic.attack_damage modifier remove 00000000-0000-0000-0000-000000000303
execute as @a unless predicate weapons:blood_sword/select run attribute @s minecraft:generic.attack_damage modifier remove 00000000-0000-0000-0000-000000000304

execute as @a unless score @s weapons.use_health matches 80..99 run attribute @s minecraft:generic.attack_damage modifier remove 00000000-0000-0000-0000-000000000301
execute as @a unless score @s weapons.use_health matches 50..79 run attribute @s minecraft:generic.attack_damage modifier remove 00000000-0000-0000-0000-000000000302
execute as @a unless score @s weapons.use_health matches 30..49 run attribute @s minecraft:generic.attack_damage modifier remove 00000000-0000-0000-0000-000000000303
execute as @a unless score @s weapons.use_health matches 1..29 run attribute @s minecraft:generic.attack_damage modifier remove 00000000-0000-0000-0000-000000000304



