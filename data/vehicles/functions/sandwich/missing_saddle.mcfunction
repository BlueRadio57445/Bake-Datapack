clear @a[distance=0..7] minecraft:saddle{vehicle_binded:1b}
kill @e[type=minecraft:item,distance=0..10,nbt={Item:{id:"minecraft:saddle",tag:{vehicle_binded:1b}}}]
execute if score @s vehicles.sandwich.fly matches 0 run item replace entity @s horse.saddle with minecraft:saddle{vehicle_binded:1b}
