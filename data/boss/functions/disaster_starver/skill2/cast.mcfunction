tag @s add disaster_starver.tping
tag @e[type=marker,tag=disaster_starver.random,sort=random,limit=1] add disaster_starver.chosen
playsound entity.enderman.teleport block @a[distance=..10] ~ ~ ~ 100 1
data merge entity @s {Invulnerable:1b}
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s weapon.mainhand with air
function boss:disaster_starver/skill2/tping