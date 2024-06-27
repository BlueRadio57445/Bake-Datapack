execute store result score @s effects.true_fire.burning_time run attribute @s generic.burning_time get 100
execute at @s if predicate effects:true_fire/is_immune_to_fire run return 0
$scoreboard players set $set effects.duration $(duration)
execute if score $set effects.duration < @s effects.true_fire.duration run return 0

scoreboard players operation @s effects.true_fire.duration = $set effects.duration
execute if entity @s[type=#minecraft:mobs_without_player] run return run function effects:true_fire/nonplayer
scoreboard players operation @s effects.true_fire.check_time = $gametime general.utils
scoreboard players add @s effects.true_fire.check_time 20
scoreboard players set @s actionbar.custom_effect 1
tag @s add effects.true_fire
function effects:true_fire/set_fire

schedule function effects:true_fire/check 20t append
