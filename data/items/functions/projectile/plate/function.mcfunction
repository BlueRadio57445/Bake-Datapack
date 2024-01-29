summon minecraft:item ~ ~ ~ {Tags:["items.broken_plate","items.new"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"minecraft:item minecraft:glass",effects:[{id:"minecraft:slowness",amplifier:2,duration:21,show_icon:1b,show_particles:0b},{id:"minecraft:luck",amplifier:0,duration:2,show_icon:0b,show_particles:0b}],Duration:400,DurationOnUse:0,Radius:2.5f,RadiusOnUse:0f,RadiusPerTick:0f,ReapplicationDelay:20}],Invulnerable:1b,PickupDelay:-1s,Item:{id:"minecraft:structure_void",Count:1b,tag:{CustomModelData:0}}}
execute store result entity @e[limit=1,type=minecraft:item,tag=items.new] Item.tag.time int 1 run time query gametime 
execute if score @s items.state matches 1 as @e[limit=1,type=minecraft:item,tag=items.new] on passengers run data modify entity @s Radius set value 5f
tag @e[type=minecraft:item,tag=items.new] remove items.new
schedule function items:projectile/plate/area_effect 1t replace
schedule function items:projectile/plate/timer 400t append
kill @s
