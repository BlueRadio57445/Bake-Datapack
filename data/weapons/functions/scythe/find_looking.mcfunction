
scoreboard players set $max scythe 0


tag @e remove find_looking.result
tag @e[tag=find_looking.candidate] add find_looking.result

execute as @e[tag=find_looking.result] store result score @s scythe run scoreboard players add $max scythe 1


scoreboard players set $filter scythe 0


tag @e remove find_looking.in_filter
function weapons:scythe/find_looking/iteration

execute as @e[tag=find_looking.result] run effect give @s glowing 1 1 true