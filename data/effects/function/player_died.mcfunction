scoreboard players set @s effects.died 0
function actionbar:effects_changed
execute if score @s effects.bleed.duration matches 1.. run function effects:bleed/clear
execute if score @s effects.stun.duration matches 1.. run function effects:stun/clear
execute if score @s effects.strong_gravity.duration matches 1.. run function effects:strong_gravity/clear
execute if score @s effects.true_fire.duration matches 1.. run function effects:true_fire/clear
