execute unless score $hunger_cave.monster quest.state matches 2.. run tp @s -163.42 -49.00 986.46
execute unless score $hunger_cave.monster quest.state matches 2.. unless entity @e[tag=quest.hunger_cave.monster,type=zombie] run summon zombie -161.64 -49.00 988.49 {Tags:["quest.hunger_cave.monster"],CustomName:'{"text":"食人魔", "color": "red"}',CustomNameVisible:1b,HandDropChances:[1.1f,1.0f],HandItems:[{id:"iron_sword",Count:1b}],ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{}}],ArmorDropChances:[0.0f,0.0f,0.0f,1.1f],PersistenceRequired:1b}
loot replace entity @e[tag=quest.hunger_cave.monster] armor.head loot quest:hunger_cave/monster/monster_head
loot replace entity @e[tag=quest.hunger_cave.monster] weapon.mainhand loot weapons:sword/blood_sword
