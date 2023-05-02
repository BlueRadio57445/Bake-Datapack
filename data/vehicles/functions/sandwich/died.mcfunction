data modify entity @e[limit=1,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:donkey_spawn_egg",tag:{sandwich:{unfolded:1b}}}}] Item.tag.EntityTag.Items set value [{id:"minecraft:donkey_spawn_egg",tag:{sandwich:{bag:1b,unfolded:1b}},Count:1b,Slot:16b}]
kill @e[limit=1,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:chest",Count:1b}}]
function vehicles:kill_above
