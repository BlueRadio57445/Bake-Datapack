#declare tag weapons.blood_sword
tag @s[type=!player] add weapons.blood_sword
execute store result score @s weapons.max_health run attribute @s minecraft:generic.max_health get
execute as @s[type=player] run scoreboard players operation $self weapons.use_health = @s general.player.health
execute as @s[type=!player] store result score $self weapons.use_health run data get entity @s Health 1
scoreboard players operation $self weapons.use_health *= $100 weapons.use_health
scoreboard players operation $self weapons.use_health /= @s weapons.max_health
execute as @s[type=player] unless score $self weapons.use_health = @s weapons.use_health run function weapons:sword/blood_sword/player_damage
execute as @s[type=!player] unless score $self weapons.use_health = @s weapons.use_health run function weapons:sword/blood_sword/mob_damage
