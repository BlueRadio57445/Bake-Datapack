advancement revoke @s only knowledge:earth_shield/shield

scoreboard players remove @s[scores={knowledge.earth_shield=1..}] knowledge.earth_shield 1

playsound item.shield.block master @a[distance=..5] ~ ~ ~ 1 1

scoreboard players operation $search knowledge.id = @s general.id
execute as @e[type=item_display,tag=earth_shield] if score @s knowledge.id = $search knowledge.id run tag @s add this
kill @e[type=item_display,tag=this,limit=1]
tag @e[tag=this] remove this

