data modify storage general:gcm str set from storage general:gcm str_list[0]
item modify entity 0000-0000-0000-0000-0001 container.0 general:gcm/concat_string_list
data modify storage general:gcm tmp set from entity 0000-0000-0000-0000-0001 item.tag.display.Name
data remove storage general:gcm str_list[0]
execute if data storage general:gcm str_list[1] run function general:gcm/push/player/string_list/concat
