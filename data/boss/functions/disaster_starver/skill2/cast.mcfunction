tag @s add boss.casting
tag @s add disaster_starver.tping

summon marker ~ ~3 ~ {Tags:["disaster_starver.random"]}

data modify storage general:gcm str_s1 set value "execute at @e[tag=disaster_starver.center] run spreadplayers ~ ~ 13 13 under "
execute store result score $cmd.score general.gcm_var run data get entity @e[tag=disaster_starver.center,limit=1] Pos[1]
scoreboard players operation $cmd.score general.gcm_var += $3 boss
data modify storage general:gcm str_s2 set value " false @e[type=marker,tag=disaster_starver.random]"
function general:gcm/push/server/score


playsound entity.enderman.teleport block @a[distance=..10] ~ ~ ~ 100 1
data merge entity @s {Invulnerable:1b}
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s weapon.mainhand with air