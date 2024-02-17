execute store result score @s weapons.sword.pirate_sword.mob run execute if entity @e[distance=..4,type=#hostile_mobs]
effect give @e[distance=..4,type=!player] weakness 7 0
scoreboard players set @s[scores={weapons.sword.pirate_sword.mob=6..}] weapons.sword.pirate_sword.mob 5
scoreboard players reset $temp weapons
#
execute if score @s weapons.sword.pirate_sword.mob matches 0 store success score $temp weapons run data modify storage weapons:sword pirate_sword.Damage set value 0.0d
execute if score @s weapons.sword.pirate_sword.mob matches 1 store success score $temp weapons run data modify storage weapons:sword pirate_sword.Damage set value 1.0d
execute if score @s weapons.sword.pirate_sword.mob matches 2 store success score $temp weapons run data modify storage weapons:sword pirate_sword.Damage set value 2.0d
execute if score @s weapons.sword.pirate_sword.mob matches 3 store success score $temp weapons run data modify storage weapons:sword pirate_sword.Damage set value 3.0d
execute if score @s weapons.sword.pirate_sword.mob matches 4 store success score $temp weapons run data modify storage weapons:sword pirate_sword.Damage set value 4.0d
execute if score @s weapons.sword.pirate_sword.mob matches 5 store success score $temp weapons run data modify storage weapons:sword pirate_sword.Damage set value 5.0d

execute if score $temp weapons matches 1 run item modify entity @s weapon.mainhand weapons:sword/pirate_sword/add_damage



scoreboard players reset @s weapons.sword.pirate_sword