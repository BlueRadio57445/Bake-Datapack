execute as @a if predicate weapons:blood_sword/select if score @s weapons.use_health matches 80..99 run attribute @s minecraft:generic.attack_damage modifier add 00000000-0000-0000-0000-000000000301 attack 1.5 add
execute as @a if predicate weapons:blood_sword/select if score @s weapons.use_health matches 50..79 run attribute @s minecraft:generic.attack_damage modifier add 00000000-0000-0000-0000-000000000302 attack 2 add
execute as @a if predicate weapons:blood_sword/select if score @s weapons.use_health matches 30..49 run attribute @s minecraft:generic.attack_damage modifier add 00000000-0000-0000-0000-000000000303 attack 3 add
execute as @a if predicate weapons:blood_sword/select if score @s weapons.use_health matches 1..29 run attribute @s minecraft:generic.attack_damage modifier add 00000000-0000-0000-0000-000000000302 attack 4 add




