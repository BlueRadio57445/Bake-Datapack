summon husk ~ ~ ~ {Health:6,IsBaby:1b,Tags:["death_dough","new"],HandItems:[{id:potato,Count:1},{id:potato,Count:1}],ArmorItems:[{},{},{},{id:player_head,tag:{display:{Name:'{"text":"Potato Shulker"}'},SkullOwner:{Id:[I;-132303407,-817282382,-1931762315,-518112910],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjA2YTFmZmE0MzM0YzVmMjZjMDVhMGQwZjkyNmYwYzliYTBiNmM1NGQ3NTMzMWI2MzEwZDQ5YmFiZWRhYzlhNSJ9fX0="}]}}},Count:1}],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:8f}]}

effect give @e[tag=new] invisibility infinite 1
effect give @e[tag=new] resistance infinite 1
effect give @e[tag=new] slowness infinite 0

particle totem_of_undying ~ ~1 ~ .6 .6 .6 0 20
playsound minecraft:item.totem.use master @a[distance=..10] ~ ~ ~ 1 2

kill @s

tag @e remove new


