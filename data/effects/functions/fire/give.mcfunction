execute at @s if predicate effects:fire/is_immune_to_fire run return 0
scoreboard players operation @s effects.fire.duration = $set effects.duration
execute if entity @s[type=#minecraft:mobs_without_player] run function effects:fire/nonplayer
execute if entity @s[type=#minecraft:mobs_without_player] run return 0
scoreboard players operation @s effects.fire.check_time = $gametime general.utils
scoreboard players add @s effects.fire.check_time 20
scoreboard players set @s actionbar.custom_effect 1
tag @s add effects.fire
function effects:fire/set_fire
schedule function effects:fire/check 20t append
