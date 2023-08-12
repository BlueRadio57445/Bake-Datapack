scoreboard players set $hunger_cave.monster quest.state 2
scoreboard players add $system quest.version 1
scoreboard players operation @a quest.version = $system quest.version

execute if entity @e[tag=quest.hunger_cave.monster,type=zombie] run tp @e[tag=quest.hunger_cave.monster] -160 -51 968
execute unless entity @e[tag=quest.hunger_cave.monster,type=zombie] run summon zombie -160 -51 968 {Tags:["quest.hunger_cave.monster"],CustomName:'{"text":"食人魔", "color": "red"}',CustomNameVisible:1b,HandDropChances:[1.1f,1.0f],HandItems:[{id:"iron_sword",Count:1b}],ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{}}],ArmorDropChances:[0.0f,0.0f,0.0f,1.1f],PersistenceRequired:1b}
loot replace entity @e[tag=quest.hunger_cave.monster] armor.head loot quest:hunger_cave/monster/monster_head
loot replace entity @e[tag=quest.hunger_cave.monster] weapon.mainhand loot weapons:sword/blood_sword

kill @e[tag=npc.hunger_cave.monster]

clear @s lead{rope:1b} 1