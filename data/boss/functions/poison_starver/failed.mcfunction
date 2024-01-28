title @a title {"text": "§4§l💀"}
title @a subtitle {"text": "§4§l我方已團滅！"}
tellraw @a {"text": "§4§l§o<§7§o§l嘔噁餓死鬼§4§l§o> §c§o噁噁噁噁噁噁噁！！！"}
playsound minecraft:entity.wither.death block @a ~ ~ ~ 100 2

kill @e[tag=boss.poison_starver]
kill @e[tag=poison_starver.starver]
kill @e[tag=poison_starver.spit]
kill @e[tag=poison_starver.random]
kill @e[tag=poison_starver.villager]
kill @e[tag=poison_starver.center]
bossbar remove boss:poison_starver
schedule clear boss:poison_starver/tick

function region:hunger_cave/boss/defeat
execute as @a[tag=bossfight_77] run function boss:clear_negative_effect

tag @a remove bossfight_77
scoreboard players reset @a boss.death_in_boss