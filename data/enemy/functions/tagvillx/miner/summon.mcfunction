summon zombie ~ ~ ~ {CustomName:'[{"text":"礦工","color":"gray"}]',Health:30,Tags:["miner","new"],HandItems:[{id:iron_pickaxe,Count:1}],ArmorItems:[{},{},{},{id:player_head,tag:{display:{Name:'{"text":"Zombie Miner"}'},SkullOwner:{Id:[I;2061563994,1519733861,-1705030664,-1657590974],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDEyYzE2OTZhYjVmYTVmN2MwM2UyYWQwNDllMGRiZGY1MWQxNzA5ZjRkODkxODU2NjAwMDE1ZWFkNGY3ZDNkMiJ9fX0="}]}}},Count:1}],HandDropChances:[0f],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:30f}]}
scoreboard players set @e[tag=miner,tag=new] enemy.miner.skill.cd 10
tag @e[tag=miner] remove new



