execute anchored eyes positioned ^ ^ ^2 run function knowledge:lightning/basic_line
function knowledge:lightning/bolt_dir
scoreboard players set $count knowledge.lightning 0
execute anchored eyes positioned ^ ^ ^4 rotated as @e[type=marker,tag=bolt_dir,limit=1,sort=random] run function knowledge:lightning/iterate
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..15] ~ ~ ~ 1 1