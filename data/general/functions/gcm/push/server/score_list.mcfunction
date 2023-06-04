item modify entity 0000-0000-0000-0000-0001 container.0 general:gcm/concat_score_list
data modify storage general:gcm pending.once append value {id:-1,command:''}
data modify storage general:gcm pending.once[-1].command set from entity 0000-0000-0000-0000-0001 item.tag.display.Name
