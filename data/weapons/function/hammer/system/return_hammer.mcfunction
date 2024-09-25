advancement revoke @s only weapons:hammer/place_hammer

function general:utils/get_holding

execute if data storage general:utils output.mainhand.tag.hammer run function weapons:hammer/system/mainhand
execute unless data storage general:utils output.mainhand.tag.hammer if data storage general:utils output.offhand.tag.hammer run function weapons:hammer/system/offhand