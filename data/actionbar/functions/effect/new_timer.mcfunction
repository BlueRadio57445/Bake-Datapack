data modify storage actionbar:player Data.EffectSchedule append value {Id:0,Time:0}
execute store result storage actionbar:player Data.EffectSchedule[-1].Id int 1 run scoreboard players get $effect.id actionbar.state
execute store result storage actionbar:player Data.EffectSchedule[-1].Time int 1 run scoreboard players get $nextSec actionbar.time
