scoreboard players operation @s weapons.use_health = $self weapons.use_health

attribute @s minecraft:generic.attack_damage modifier remove weapons:blood_sword_damage_modify

execute if score @s weapons.use_health matches 80..99 run attribute @s minecraft:generic.attack_damage modifier add weapons:blood_sword_damage_modify 1.5 add_value
execute if score @s weapons.use_health matches 50..79 run attribute @s minecraft:generic.attack_damage modifier add weapons:blood_sword_damage_modify 2 add_value
execute if score @s weapons.use_health matches 30..49 run attribute @s minecraft:generic.attack_damage modifier add weapons:blood_sword_damage_modify 3 add_value
execute if score @s weapons.use_health matches 0..29 run attribute @s minecraft:generic.attack_damage modifier add weapons:blood_sword_damage_modify 4 add_value
