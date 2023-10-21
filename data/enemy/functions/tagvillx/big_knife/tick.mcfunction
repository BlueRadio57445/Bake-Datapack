execute as @e[tag=big_knife] at @s anchored eyes run function enemy:tagvillx/big_knife/big_knife
scoreboard players remove @e[tag=big_knife_display] enemy.big_knife.skill.cd 1
kill @e[tag=big_knife_display,scores={enemy.big_knife.skill.cd=..0}] 
execute as @e[tag=big_knife_display,tag=1] at @s anchored eyes as @e[tag=big_knife_display] run function enemy:tagvillx/big_knife/tp_knife
