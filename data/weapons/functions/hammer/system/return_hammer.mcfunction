advancement revoke @s only weapons:hammer/place_hammer

function general:player_data/get_holding
execute if data storage general:player_data output.mainhand.tag.hammer run function weapons:hammer/system/mainhand
execute unless data storage general:player_data output.mainhand.tag.hammer if data storage general:player_data output.offhand run function weapons:hammer/system/offhand