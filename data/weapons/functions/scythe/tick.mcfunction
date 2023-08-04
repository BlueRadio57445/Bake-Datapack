# 箱子必須是新的，不然可能會有打不到怪的BUG
execute as @a[predicate=weapons:scythe/hold_scythe,predicate=weapons:scythe/looking] at @s run function weapons:scythe/summon_box
execute as @e[type=interaction,tag=scythe.box] at @s run function weapons:scythe/box_tp