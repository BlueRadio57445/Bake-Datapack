title @a title {"text": "§4§l💀"}
title @a subtitle {"text": "§4§l我方已團滅！"}
tellraw @a {"text": "§4§l§o<§7§o§l嘔噁餓死鬼§4§l§o> §c§o噁噁噁噁噁噁噁！！！"}
playsound minecraft:entity.wither.death block @a ~ ~ ~ 100 2

function boss:poison_starver/reset

#function region:hunger_cave/boss/defeat 這行還要再改
execute as @a[tag=poison_starver.player] run function boss:clear_negative_effect

tag @a remove poison_starver.player
scoreboard players reset @a boss.death_in_boss