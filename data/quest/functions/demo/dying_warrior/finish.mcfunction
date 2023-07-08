scoreboard players set $demo.dying_warrior quest.state 2
scoreboard players add $system quest.version 1
scoreboard players operation @a quest.version = $system quest.version
advancement grant @a only quest:demo/dying_warrior/finish

kill @e[tag=npc.demo.warrior,tag=!npc.figure]
data merge entity @e[limit=1,tag=npc.figure,tag=npc.demo.warrior] {ArmorItems:[{},{},{},{id:"skeleton_skull",Count:1b}]}
tag @e[tag=npc.demo.warrior] remove npc.figure
tag @e[tag=npc.demo.warrior] remove npc.demo.warrior

give @a leather_helmet{Trim:{material:"minecraft:diamond",pattern:"minecraft:tide"},display:{color:16774320, Name:'{"text":"沙灘戰士盔甲"}'}} 1
give @a leather_chestplate{Trim:{material:"minecraft:diamond",pattern:"minecraft:tide"},display:{color:16774320, Name:'{"text":"沙灘戰士盔甲"}'}} 1
give @a leather_leggings{Trim:{material:"minecraft:diamond",pattern:"minecraft:tide"},display:{color:16774320, Name:'{"text":"沙灘戰士盔甲"}'}} 1
give @a leather_boots{Trim:{material:"minecraft:diamond",pattern:"minecraft:tide"},display:{color:16774320, Name:'{"text":"沙灘戰士盔甲"}'}} 1