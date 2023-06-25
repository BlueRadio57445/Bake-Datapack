data modify storage general:gcm execute append value {id:-1,command:"say test"}
data modify storage general:gcm str set value "function quest_system:demo_item_check"
function general:gcm/push/player/string
data modify storage general:gcm str set value "say hi"
function general:gcm/push/player/string