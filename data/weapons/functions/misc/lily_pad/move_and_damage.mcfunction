scoreboard players operation $search weapons.lily_pad.id = @s weapons.lily_pad.id
execute as @a if score @s general.id = $search weapons.lily_pad.id run tag @s add this

# 前進
tp @s[tag=weapons.lily_pad.forward] ^ ^ ^1.5

# 前進轉倒退
execute unless entity @a[tag=this,distance=..20] run tag @s remove weapons.lily_pad.forward
execute unless entity @a[tag=this,distance=..20] run tag @s add weapons.lily_pad.backward

# 倒退
tp @s[tag=weapons.lily_pad.backward] ^ ^ ^1.5 facing entity @p[tag=this] eyes

# 傷害
execute positioned ~-0.5 ~ ~-0.5 as @e[dx=0,dy=0,dz=0,type=#mobs,tag=!this] run damage @s 10 arrow

# 歸還
execute as @s[tag=weapons.lily_pad.backward] if entity @a[tag=this,distance=..2] as @a[tag=this] run loot give @s loot weapons:misc/lily_pad
execute as @s[tag=weapons.lily_pad.backward] if entity @a[tag=this,distance=..2] run kill @s

tag @a[tag=this] remove this