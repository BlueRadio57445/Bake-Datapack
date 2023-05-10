# idea from https://github.com/rx-modules/PlayerDB
execute store result score $selected general.id run data get storage general:player_data Data[{selected:1b}].id
execute if score @s general.id = @s general.id unless score $selected general.id = @s general.id run function general:player_data/select/main
