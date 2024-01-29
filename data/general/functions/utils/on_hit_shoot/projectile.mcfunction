execute on origin as @s[tag=!this] run return 0
execute unless data entity @s {HasBeenShot:0b} run return 0

tag @s add general.this
execute summon minecraft:marker run function general:utils/on_hit_shoot/marker
tag @e[tag=general.this] remove general.this
