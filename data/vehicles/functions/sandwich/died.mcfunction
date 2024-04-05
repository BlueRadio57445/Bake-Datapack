execute as @e[limit=1,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:item_frame",tag:{sandwich:{unfolded:1b}}}}] run function vehicles:sandwich/entity_item_modify
kill @e[limit=1,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:chest",Count:1b}}]
kill @e[limit=1,type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:saddle",tag:{vehicle_binded:1b},Count:1b}}]
function general:utils/kill_above
