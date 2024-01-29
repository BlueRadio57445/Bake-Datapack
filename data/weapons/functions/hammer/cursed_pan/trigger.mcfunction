advancement revoke @s only weapons:hammer/cursed_pan

playsound minecraft:block.bell.use master @a[distance=..15] ~ ~ ~ 0.8 1
playsound minecraft:block.anvil.place master @a[distance=..15] ~ ~ ~ 0.2 1
tag @s add this
execute as @e[tag=hammer.cursed_pan,type=marker] at @s run function weapons:hammer/cursed_pan/cast
tag @s remove this