execute if score $filter scythe matches 1.. as @e[tag=find_looking.candidate,tag=find_looking.result] run function weapons:scythe/find_looking/check_filter
execute if score $filter scythe matches 0 run tag @e[tag=find_looking.candidate,tag=find_looking.result] add find_looking.in_filter

execute store success score $success scythe if predicate weapons:scythe/can_see_filter

execute if score $success scythe matches 0 run tag @e[tag=find_looking.candidate,tag=find_looking.in_filter] remove find_looking.result
execute if score $success scythe matches 1 run tag @e[tag=find_looking.candidate,tag=!find_looking.in_filter] remove find_looking.result

scoreboard players operation $filter scythe *= $2 scythe
execute if score $filter scythe matches 0 run scoreboard players set $filter scythe 1

execute if entity @e[tag=find_looking.candidate,tag=find_looking.result,limit=1] if score $filter scythe <= $max scythe run function weapons:scythe/find_looking/iteration
