# 執行者、執行位置是弧形嘔吐物
particle glow_squid_ink ~ ~ ~ 0 0 0 0.1 1 force
execute if entity @s[nbt={OnGround:1b}] run summon area_effect_cloud ~ ~ ~ {RadiusPerTick:0.004f,Particle:"totem_of_undying",Radius:0.5f,Duration:400,Tags:["poison_starver.spit"],effects:[{id:"nausea",amplifier:0b,duration:120,show_particles:1b},{id:"hunger",amplifier:0b,duration:120,show_particles:1b},{id:"poison",amplifier:0b,duration:120,show_particles:1b}]}
kill @s[nbt={OnGround:1b}]