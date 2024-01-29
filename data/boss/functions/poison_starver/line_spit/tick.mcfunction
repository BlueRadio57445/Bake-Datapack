# 執行者、執行位置是那顆草球
tp @s ^ ^ ^0.25
particle glow_squid_ink ~ ~ ~ 0 0 0 0.1 0 force
execute unless entity @e[type=#object,tag=poison_starver.spit2,distance=..2.1] run playsound block.mud.break hostile @a[distance=..20] ~ ~ ~
execute unless entity @e[type=#object,tag=poison_starver.spit2,distance=..2.1] run summon area_effect_cloud ~ ~ ~ {RadiusPerTick:0.004f,Particle:"totem_of_undying",Radius:1f,Duration:300,Tags:["poison_starver.spit","poison_starver.spit2"],effects:[{id:"nausea",amplifier:0b,duration:120,show_particles:1b},{id:"hunger",amplifier:0b,duration:120,show_particles:1b},{id:"poison",amplifier:0b,duration:120,show_particles:1b}]}