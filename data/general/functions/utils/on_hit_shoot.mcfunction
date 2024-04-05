function general:utils/get_holding
data modify storage general:utils input set value {mainhand:"",offhand:""}
data modify storage general:utils input.mainhand set string storage general:utils output.mainhand.id 10
data modify storage general:utils input.offhand set string storage general:utils output.offhand.id 10
data modify storage general:utils Item set value {}
function general:utils/on_hit_shoot/check with storage general:utils input

tag @s add this
execute if data storage general:utils Item.id as @e[type=#minecraft:projectiles] run function general:utils/on_hit_shoot/projectile
tag @s remove this

scoreboard players reset @s general.shot_bow
scoreboard players reset @s general.shot_crossbow
scoreboard players reset @s general.shot_egg
scoreboard players reset @s general.shot_ender_pearl
scoreboard players reset @s general.shot_snowball
scoreboard players reset @s general.shot_trident
advancement revoke @s only general:utils/on_hit_shoot
