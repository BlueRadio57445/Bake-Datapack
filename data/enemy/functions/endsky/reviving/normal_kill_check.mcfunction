scoreboard players set $is_attacker enemy 0
execute on attacker as @s[tag=this] run scoreboard players set $is_attacker enemy 1
execute if score $is_attacker enemy matches 1 on passengers run tag @s[tag=enemy.reviving.marker] add enemy.no_exp
