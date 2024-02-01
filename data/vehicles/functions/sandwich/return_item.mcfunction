execute on owner at @s run summon minecraft:item ~ ~ ~ {Tags:["vehicles.return"],Item:{id:"minecraft:dirt",Count:1b}}
execute on owner run data modify entity @e[limit=1,type=minecraft:item,tag=vehicles.return,nbt={Age:0s}] Owner set from entity @s UUID
execute unless entity @e[limit=1,type=minecraft:item,tag=vehicles.return,nbt={Age:0s}] at @a[limit=1,tag=vehicles.user] run summon minecraft:item ~ ~ ~ {Tags:["vehicles.return"],Item:{id:"minecraft:dirt",Count:1b}}
execute unless entity @e[limit=1,type=minecraft:item,tag=vehicles.return,nbt={Age:0s}] run data modify entity @e[limit=1,type=minecraft:item,tag=vehicles.return,nbt={Age:0s}] Owner set from entity @a[limit=1,tag=vehicles.user] UUID
execute unless entity @e[limit=1,type=minecraft:item,tag=vehicles.return,nbt={Age:0s}] at @s run summon minecraft:item ~ ~ ~ {Tags:["vehicles.return"],Item:{id:"minecraft:dirt",Count:1b}}
data modify entity @e[limit=1,type=minecraft:item,tag=vehicles.return,nbt={Age:0s}] Item set from entity @s Items[{Slot:16b}]
tag @e[tag=vehicles.return] remove vehicles.return
