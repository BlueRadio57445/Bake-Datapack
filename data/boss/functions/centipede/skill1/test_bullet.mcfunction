execute if score $bullet centipede.cd matches 90 run particle angry_villager ~ ~ ~ 0.5 0.5 0.5 0.5 100 force
execute if score $bullet centipede.cd matches 90 run playsound entity.tnt.primed ambient @a ~ ~ ~ 10 1 1
execute if score $bullet centipede.cd matches 90 run tag @s add centipede.shooting
execute if score $bullet centipede.cd matches 110 run playsound entity.blaze.shoot ambient @a ~ ~ ~ 10 1 1
execute if score $bullet centipede.cd matches 110 run tag @s remove centipede.shooting
execute if score $bullet centipede.cd matches 110.. run function boss:centipede/skill1/shoot