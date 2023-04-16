execute as @e[type=snowball,tag=grenade] at @s run kill @e[type=marker,tag=grenade.pos,limit=1,sort=nearest]
execute as @e[type=marker,tag=grenade.pos] at @s run summon tnt ~ ~ ~ {Fuse: 0}
execute as @e[type=marker,tag=grenade.pos] run kill @s
execute as @e[type=snowball,tag=grenade] at @s run summon marker ~ ~ ~ {Tags: ["grenade.pos"]}