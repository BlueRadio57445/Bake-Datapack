scoreboard players operation $temp npc.user = @s npc.user
execute as @e[tag=npc.tag] if score @s npc.user = $temp npc.user run tag @s add npc.temp
summon minecraft:villager ~ -64 ~ {Tags:["npc.new"],NoAI:1b,Invulnerable:1b,Silent:1b,ActiveEffects:[{Id:11,Duration:-1,Amplifier:4b,ShowParticles:0b},{Id:14,Duration:-1,Amplifier:0b,ShowParticles:0b}],VillagerData:{profession:"minecraft:librarian",level:6}}
scoreboard players operation @e[limit=1,type=minecraft:villager,tag=npc.new] npc.user = @s npc.user
data modify entity @e[limit=1,type=minecraft:villager,tag=npc.new] CustomName set from entity @s CustomName
data modify entity @e[limit=1,type=minecraft:villager,tag=npc.new] Offers set from entity @s Offers
data modify entity @e[limit=1,type=minecraft:villager,tag=npc.new] Tags set from entity @s Tags
tag @e[tag=npc.temp] remove npc.temp
tp @s ~ ~-100 ~
kill @s
