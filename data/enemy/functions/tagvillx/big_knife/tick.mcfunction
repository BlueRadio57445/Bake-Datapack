execute as @e[tag=big_knife] at @s anchored eyes run function enemy:tagvillx/big_knife/big_knife
execute as @e[tag=big_knife_display] at @s run function enemy:tagvillx/big_knife/knife/animation
scoreboard players remove @e[tag=big_knife_display] enemy.big_knife.skill.cd 1
execute as @e[tag=big_knife_display,scores={enemy.big_knife.skill.cd=..0}] on passengers run kill @s
kill @e[tag=big_knife_display,scores={enemy.big_knife.skill.cd=..0}] 
