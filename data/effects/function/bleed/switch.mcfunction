execute if score @s effects.bleed.applied matches 0 run function effects:bleed/function
execute if score @s effects.bleed.applied matches 1 run function effects:bleed/counter
execute store success score @s effects.bleed.applied if score @s effects.bleed.applied matches 0
execute if score @s effects.bleed.duration matches 0 run function effects:bleed/clear
