data modify storage actionbar:player Data.effect_schedule append value {Id:0,time:0,category:""}
execute store result storage actionbar:player Data.effect_schedule[-1].Id int 1 run scoreboard players get $effect.id actionbar.state
execute store result storage actionbar:player Data.effect_schedule[-1].time int 1 run scoreboard players get $nextSec actionbar.time
execute if data storage actionbar:player Effects[0].category run data modify storage actionbar:player Data.effect_schedule[-1].category set from storage actionbar:player Effects[0].category
execute unless data storage actionbar:player Effects[0].category run data modify storage actionbar:player Data.effect_schedule[-1].category set from storage actionbar:player Data.effect_schedule[0].category
