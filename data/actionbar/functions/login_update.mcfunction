# Vanilla effects
data modify storage actionbar:player Data set value {}
function general:player_data/get {path:"Actionbar",target:"storage actionbar:player Data"}
data modify storage actionbar:player Data.positive_effects set value []
data modify storage actionbar:player Data.negative_effects set value []
data modify storage actionbar:player Data.effect_schedule set value []
function general:player_data/store {path:"Actionbar",target:"storage actionbar:player Data"}
advancement grant @s only actionbar:effects_changed

# Custom effects
scoreboard players operation $nextSec actionbar.time = $gametime general.utils
scoreboard players add $nextSec actionbar.time 20
execute if score @s effects.bleed.duration matches 0.. run scoreboard players operation @s effects.bleed.check_time = $nextSec actionbar.time
execute if score @s effects.bleed.duration matches 0.. run schedule function effects:bleed/check 20t
execute if score @s effects.stun.duration matches 0.. run scoreboard players operation @s effects.stun.check_time = $nextSec actionbar.time
execute if score @s effects.stun.duration matches 0.. run schedule function effects:stun/check 20t

# Center reset

function general:player_data/remove {path:"Actionbar.center"}
