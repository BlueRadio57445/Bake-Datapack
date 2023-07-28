# Vanilla effects
function general:player_data/select
data modify storage actionbar:player Data set value {}
data modify storage actionbar:player Data set from storage general:player_data Data[{selected:1b}].Actionbar
data modify storage actionbar:player Data.PositiveEffects set value []
data modify storage actionbar:player Data.NegativeEffects set value []
data modify storage actionbar:player Data.EffectSchedule set value []
data modify storage general:player_data Data[{selected:1b}].Actionbar set from storage actionbar:player Data
advancement grant @s only actionbar:effects_changed

# Custom effects
execute store result score $nextSec actionbar.time run time query gametime
scoreboard players add $nextSec actionbar.time 20
execute if score @s effects.bleed.duration matches 0.. run scoreboard players operation @s effects.bleed.check_time = $nextSec actionbar.time
execute if score @s effects.bleed.duration matches 0.. run schedule function effects:bleed/check 20t
execute if score @s effects.stun.duration matches 0.. run scoreboard players operation @s effects.stun.check_time = $nextSec actionbar.time
execute if score @s effects.stun.duration matches 0.. run schedule function effects:stun/check 20t
