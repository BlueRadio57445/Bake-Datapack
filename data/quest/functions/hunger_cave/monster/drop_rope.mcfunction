scoreboard players set $hunger_cave.monster quest.state 2
scoreboard players add $system quest.version 1
scoreboard players operation @a quest.version = $system quest.version

execute if entity @e[tag=quest.hunger_cave.monster,type=zombie] run tp @e[tag=quest.hunger_cave.monster] -160 -51 968
execute unless entity @e[tag=quest.hunger_cave.monster,type=zombie] run summon zombie -160 -51 968 {Tags:["quest.hunger_cave.monster"],CustomName:'{"text":"食人魔", "color": "red"}',CustomNameVisible:1b,HandDropChances:[1.1f,1.0f],HandItems:[{id:"iron_sword",Count:1b}],ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;1105608875,236079132,-1972655936,947067796],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTY2NzFiNGI0OTA5ZmJhMWQ5ZDM0ZjNkZmE1M2Q5MzFiYjFjZWI4MTc1MDAzYTI1MzU4NmE4ZTgwYmY1NTE2OCJ9fX0="}]}}}}],PersistenceRequired:1b}
loot replace entity @e[tag=quest.hunger_cave.monster] weapon.mainhand loot weapons:sword/blood_sword

kill @e[tag=npc.hunger_cave.monster]

clear @s lead{rope:1b} 1