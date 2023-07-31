kill @e[tag=npc.boss.disaster_starver]
summon minecraft:armor_stand ~ ~ ~ {Tags:["npc.this","npc.tag","npc.figure","npc.boss.disaster_starver"],Rotation:[90.0f,0.0f],CustomName:'{"text":"Boss - 災厄餓死鬼"}',Invisible:1b,NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299503430,-1572319709,-1513125856,-2132581038],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWE5NzgwYjhiOWZjYjA4ZTgzNzhjNjVmOGY0MzJjYzJhOTM3YTllMGFiMmZkMTllMDE2ZTdiM2RlYWEwYmMwZSJ9fX0="}]}}}}]}
summon minecraft:interaction ~ ~-0.05 ~ {Tags:["npc.this","npc.tag","npc.boss.disaster_starver"],width:0.6f,height:2.1f}
summon minecraft:text_display ~ ~2.475 ~ {Tags:["npc.this","npc.tag","npc.name","npc.boss.disaster_starver"],billboard:"center",background:-1073741825,transformation:{translation:[0.0f,-0.255f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
summon item ~ ~1 ~0.372 {NoGravity:1b,Age:-32768,PickupDelay:32767,Tags:["npc.this","npc.tag","npc.figure","npc.boss.disaster_starver"],Item:{id:"minecraft:quartz_slab",Count:1b}}
summon item ~ ~1 ~-0.372 {NoGravity:1b,Age:-32768,PickupDelay:32767,Tags:["npc.this","npc.tag","npc.figure","npc.boss.disaster_starver"],Item:{id:"minecraft:quartz_slab",Count:1b}}
summon item ~0.372 ~1 ~ {NoGravity:1b,Age:-32768,PickupDelay:32767,Tags:["npc.this","npc.tag","npc.figure","npc.boss.disaster_starver"],Item:{id:"minecraft:quartz_slab",Count:1b}}
summon item ~-0.372 ~1 ~ {NoGravity:1b,Age:-32768,PickupDelay:32767,Tags:["npc.this","npc.tag","npc.figure","npc.boss.disaster_starver"],Item:{id:"minecraft:quartz_slab",Count:1b}}
data modify storage npc_system:common This set from storage npc:boss disaster_starver
function npc_system:common/summon
