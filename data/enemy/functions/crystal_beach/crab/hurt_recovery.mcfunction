# schedule觸發，執行者是伺服器

execute as @e[tag=enemy.crab,nbt={HurtTime:0s}] on passengers run data modify entity @s[tag=enemy.decoration,tag=!crab.claw] block_state.Name set value white_stained_glass
execute as @e[tag=enemy.crab,nbt={HurtTime:0s}] on passengers run data modify entity @s[tag=enemy.decoration,tag=!crab.claw] item.id set value white_stained_glass