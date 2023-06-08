execute if data entity @s Items[{Slot:16b}] on owner at @s run summon minecraft:item ~ ~ ~ {Tags:["vehicles.return"],Item:{id:"minecraft:dirt",Count:1b}}
data modify entity @e[limit=1,type=minecraft:item,tag=vehicles.return,nbt={Age:0s}] Item set from entity @s Items[{Slot:16b}]
execute on owner run ride @s dismount
execute at @s run tp @s ~ -100 ~
function vehicles:kill_above
