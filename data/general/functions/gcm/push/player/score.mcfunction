data modify storage general:gcm head set value "execute as @a[tag=general.gcm_this] run "
item modify entity 0000-0000-0000-0000-0001 container.0 general:gcm/concat_score
data modify storage general:gcm pending append value {id:0,command:''}
execute store result storage general:gcm pending[-1].id int 1 run scoreboard players get @s general.id
data modify storage general:gcm pending[-1].command set from entity 0000-0000-0000-0000-0001 item.tag.display.Name
data remove storage general:gcm head
