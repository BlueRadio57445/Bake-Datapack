summon minecraft:donkey ~ ~ ~ {Tags:["vehicles.tag","vehicles.sandwich","vehicles.new"],Invulnerable:1b,NoAI:1b,Silent:1b,Tame:1b,ChestedHorse:1b,CustomName:'{"text":"難道我就是個三明治還要跟你說嗎"}',Attributes:[{Name:"minecraft:generic.max_health",Base:0.1}],ActiveEffects:[{Id:11,Amplifier:4,Duration:-1,ShowParticles:false}]}
data modify entity @e[limit=1,type=minecraft:donkey,tag=vehicles.new] Owner set from entity @s UUID
tag @e[limit=1,type=minecraft:donkey,tag=vehicles.new] remove vehicles.new
