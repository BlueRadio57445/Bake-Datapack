scoreboard players set $hunger_cave.dying_warrior quest.state 2
scoreboard players add $system quest.version 1
scoreboard players operation @a quest.version = $system quest.version
advancement grant @a only quest:hunger_cave/dying_warrior/finish

kill @e[tag=npc.hunger_cave.warrior,tag=!npc.figure]
data merge entity @e[limit=1,tag=npc.figure,tag=npc.hunger_cave.warrior] {ArmorItems:[{},{},{},{id:"skeleton_skull",Count:1b}],DisabledSlots:1048623}
tag @e[tag=npc.hunger_cave.warrior] add quest.hunger_cave.deadbody
tag @e[tag=npc.hunger_cave.warrior] remove npc.figure
tag @e[tag=npc.hunger_cave.warrior] remove npc.hunger_cave.warrior

give @a leather_helmet{Trim:{material:"minecraft:diamond",pattern:"minecraft:tide"},display:{color:16774320, Name:'{"text":"沙灘戰士盔甲"}'}} 1
give @a leather_chestplate{Trim:{material:"minecraft:diamond",pattern:"minecraft:tide"},display:{color:16774320, Name:'{"text":"沙灘戰士盔甲"}'}} 1
give @a leather_leggings{Trim:{material:"minecraft:diamond",pattern:"minecraft:tide"},display:{color:16774320, Name:'{"text":"沙灘戰士盔甲"}'}} 1
give @a leather_boots{Trim:{material:"minecraft:diamond",pattern:"minecraft:tide"},display:{color:16774320, Name:'{"text":"沙灘戰士盔甲"}'}} 1