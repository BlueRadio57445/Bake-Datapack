tag @s remove boss.casting
tag @s remove poison_starver.tping
kill @e[tag=poison_starver.random]

playsound entity.enderman.teleport block @a[distance=..10] ~ ~ ~ 100 1
effect clear @s invisibility
data merge entity @s {Invulnerable:0b}
item replace entity @s armor.head with player_head{SkullOwner:{Id:[I;-299503430,-1572319709,-1513125856,-2132581038],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWE5NzgwYjhiOWZjYjA4ZTgzNzhjNjVmOGY0MzJjYzJhOTM3YTllMGFiMmZkMTllMDE2ZTdiM2RlYWEwYmMwZSJ9fX0="}]}}} 1
item replace entity @s armor.chest with leather_chestplate{display:{color:3646734}} 1
item replace entity @s weapon.mainhand with stone_sword{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:1,UUID:[I;1587364134,-333035565,-2058294644,-2092906950],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1946039580,-673102571,-1357604319,1338394606],Slot:"mainhand"}]} 1