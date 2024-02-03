# 進度觸發，執行者、執行位置是玩家
advancement revoke @s only enemy:crystal_beach/crab/hurt_by_player

tag @s add this
execute at @s as @e[tag=enemy.crab,nbt={HurtTime:10s}] run function enemy:check_attacker
execute as @e[tag=attacked] on passengers run data modify entity @s[tag=enemy.decoration,tag=!crab.claw] block_state.Name set value red_stained_glass
execute as @e[tag=attacked] on passengers run data modify entity @s[tag=enemy.decoration,tag=!crab.claw] item.id set value red_stained_glass
tag @e[tag=attacked] remove attacked
tag @s remove this

schedule function enemy:crystal_beach/crab/hurt_recovery 11t