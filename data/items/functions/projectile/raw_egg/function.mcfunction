summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["items.raw_egg.cloud","items.new"],Particle:"minecraft:dust 0.75 0.75 0.75 0.5",effects:[{id:"minecraft:slowness",amplifier:2,duration:21,show_icon:1b,show_particles:0b}],Duration:200,DurationOnUse:0,Radius:2f,RadiusOnUse:0f,RadiusPerTick:0f,ReapplicationDelay:20}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["items.temp"],Duration:0}
data modify entity @e[limit=1,type=minecraft:area_effect_cloud,tag=items.temp] Owner set from entity @s data.Owner
execute as @e[limit=1,type=minecraft:area_effect_cloud,tag=items.temp] on origin run tag @s add items.this
kill @e[tag=items.temp]
execute as @e[type=#minecraft:mobs,nbt={HurtTime:10s}] run function items:projectile/raw_egg/attacker
tag @e[tag=items.this] remove items.this
tag @e[tag=items.new] remove items.new
kill @s
