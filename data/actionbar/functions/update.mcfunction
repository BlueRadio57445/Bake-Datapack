scoreboard players set @s actionbar.update 0

function general:player_data/select
data modify storage actionbar:player Data set value {}
data modify storage actionbar:player Data set from storage general:player_data Data[{selected:1b}].Actionbar
title @s actionbar {"text":"","extra":[{"text":"\uDAFF\uDF83"},{"nbt":"Data.NegativeEffects[].IconReverse","storage":"actionbar:player","interpret":true,"separator":""},{"nbt":"Data.NegativeEffects[].Icon","storage":"actionbar:player","interpret":true,"separator":"","font":"bake:effect_icon"},{"nbt":"Data.NegativeEffects[].IconReverse","storage":"actionbar:player","interpret":true,"separator":""},{"nbt":"Data.NegativeEffects[].Time","storage":"actionbar:player","interpret":true,"separator":"","font":"bake:effect_time"},{"text":"\uDB00\uDC7C"},{"text":"\uDB00\uDC7B"},{"nbt":"Data.PositiveEffects[].Icon","storage":"actionbar:player","interpret":true,"separator":"","font":"bake:effect_icon"},{"nbt":"Data.PositiveEffects[].IconReverse","storage":"actionbar:player","interpret":true,"separator":""},{"nbt":"Data.PositiveEffects[].Time","storage":"actionbar:player","interpret":true,"separator":"","font":"bake:effect_time"},{"nbt":"Data.PositiveEffects[].IconReverse","storage":"actionbar:player","interpret":true,"separator":""},{"text":"\uDAFF\uDF84"},{"nbt":"Data.Center","storage":"actionbar:player","interpret":true}]}
