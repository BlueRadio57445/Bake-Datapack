execute anchored eyes positioned ^ ^ ^2 run function knowledge:lightning_mad/basic_line
function knowledge:lightning_mad/bolt_dir
scoreboard players set $count knowledge.lightning 0
execute anchored eyes positioned ^ ^ ^4 rotated as @e[type=marker,tag=bolt_dir,limit=1,sort=random] run function knowledge:lightning_mad/iterate
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..15] ~ ~ ~ 1 1