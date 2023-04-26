data modify storage general:gcm tmp set value '{"text":"execute as @a[tag=general.gcm_this] run "}'
execute if data storage general:gcm str_list[1] run function general:gcm/push/once/string_list/concat
data modify storage general:gcm str set from storage general:gcm str_list[0]
item modify entity 0000-0000-0000-0000-0001 container.0 general:gcm/concat_string
data modify storage general:gcm pending.once append value {id:0,command:''}
execute store result storage general:gcm pending.once[-1].id int 1 run scoreboard players get @s general.id
data modify storage general:gcm pending.once[-1].command set from entity 0000-0000-0000-0000-0001 item.tag.display.Name
data remove storage general:gcm str_list[0]
data modify storage general:gcm str set value ""
data remove storage general:gcm tmp
