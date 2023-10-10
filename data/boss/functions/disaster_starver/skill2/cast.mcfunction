tag @s add boss.casting
tag @s add disaster_starver.tping

summon marker ~ ~3 ~ {Tags:["disaster_starver.random"]}

execute store result score $temp boss run data get entity @e[tag=disaster_starver.center,limit=1] Pos[1]
scoreboard players operation $temp boss += $3 boss
data modify storage boss:storage macro set value {}
execute store result storage boss:storage macro.value int 1 run scoreboard players get $temp boss
function boss:disaster_starver/skill2/cast_macro with storage boss:storage macro


playsound entity.enderman.teleport block @a[distance=..10] ~ ~ ~ 100 1
data merge entity @s {Invulnerable:1b}
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s weapon.mainhand with air