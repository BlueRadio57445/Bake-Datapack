scoreboard players set @s actionbar.update 0

data modify storage actionbar:player Data set value {}
function general:player_data/get {path:"Actionbar",target:"storage actionbar:player Data"}
title @s actionbar {"text":"","extra":[{"text":"\uDAFF\uDF83"},{"nbt":"Data.negative_effects[].icon_reverse","storage":"actionbar:player","interpret":true,"separator":""},{"nbt":"Data.negative_effects[].icon","storage":"actionbar:player","interpret":true,"separator":"","font":"bake:effect_icon"},{"nbt":"Data.negative_effects[].icon_reverse","storage":"actionbar:player","interpret":true,"separator":""},{"nbt":"Data.negative_effects[].time","storage":"actionbar:player","interpret":true,"separator":"","font":"bake:effect_time"},{"text":"\uDB00\uDC7C"},{"text":"\uDB00\uDC7B"},{"nbt":"Data.positive_effects[].icon","storage":"actionbar:player","interpret":true,"separator":"","font":"bake:effect_icon"},{"nbt":"Data.positive_effects[].icon_reverse","storage":"actionbar:player","interpret":true,"separator":""},{"nbt":"Data.positive_effects[].time","storage":"actionbar:player","interpret":true,"separator":"","font":"bake:effect_time"},{"nbt":"Data.positive_effects[].icon_reverse","storage":"actionbar:player","interpret":true,"separator":""},{"text":"\uDAFF\uDF84"},{"nbt":"Data.Center","storage":"actionbar:player","interpret":true}]}
