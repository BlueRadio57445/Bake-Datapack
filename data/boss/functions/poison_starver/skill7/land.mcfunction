tag @s remove boss.casting
tag @s remove poison_starver.jumping
tag @s remove poison_starver.big_jumping

playsound entity.zombie.hurt master @a[distance=..15]
playsound entity.player.attack.strong master @a[distance=..15]
particle block dirt ~ ~0.01 ~ 1.2 0.1 1.2 0.01 400
execute as @a[distance=..4] run damage @s 6 mob_attack by @e[sort=nearest,limit=1,tag=boss.poison_starver]
summon area_effect_cloud ~ ~ ~ {RadiusPerTick:0.004f,Particle:"totem_of_undying",Radius:4f,Duration:200,Tags:["poison_starver.spit"],effects:[{id:"nausea",amplifier:0b,duration:120,show_particles:1b},{id:"hunger",amplifier:0b,duration:120,show_particles:1b},{id:"poison",amplifier:0b,duration:120,show_particles:1b}]}