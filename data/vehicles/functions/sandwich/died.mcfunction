execute as @e[limit=1,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:donkey_spawn_egg",tag:{sandwich:{unfolded:1b}}}}] run function vehicles:sandwich/entity_item_modify
kill @e[limit=1,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:chest",Count:1b}}]
function vehicles:kill_above
