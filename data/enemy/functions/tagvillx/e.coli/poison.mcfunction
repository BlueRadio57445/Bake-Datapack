tag @s add infected

effect give @s poison infinite 1 false
effect give @s nausea infinite 0 false
effect give @s weakness infinite 1 false

kill @e[tag=E.coli,limit=1,sort=nearest]

title @s title ""
title @s subtitle ["","連按",{"keybind":"key.sneak"},"掙脫"]