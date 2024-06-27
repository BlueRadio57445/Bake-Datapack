execute store result score @s effects.true_fire.burning_time run attribute @s generic.burning_time get 100
execute at @s if predicate effects:true_fire/is_immune_to_fire run return run scoreboard players set @s effects.true_fire.duration 0
scoreboard players operation $level effects.true_fire.duration = @s effects.true_fire.duration
scoreboard players operation $level effects.true_fire.duration *= $100 general.const
scoreboard players operation $level effects.true_fire.duration /= @s effects.true_fire.burning_time
scoreboard players operation $level effects.true_fire.duration < $255 general.const
data modify storage general:utils input set value {level:0}
execute store result storage general:utils input.level int 1 run scoreboard players get $level effects.true_fire.duration
function effects:true_fire/ignite with storage general:utils input
