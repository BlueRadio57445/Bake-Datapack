execute as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:donkey_spawn_egg",tag:{sandwich:{bag:1b}}}}] run data modify entity @s Item.tag.EntityTag.Items set value [{id:"minecraft:donkey_spawn_egg",tag:{sandwich:{bag:1b}},Count:1b,Slot:16b}]
kill @e[limit=1,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:chest",Count:1b}}]
function vehicles:kill_above
