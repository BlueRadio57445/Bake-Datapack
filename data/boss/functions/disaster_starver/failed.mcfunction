title @a title {"text": "§4§l💀"}
title @a subtitle {"text": "§4§l我方已團滅！"}
tellraw @a {"text": "§4§l§o<§7§o§l災厄餓死鬼§4§l§o> §c§o感受飢餓吧，無盡的飢餓！"}
playsound minecraft:entity.wither.death block @a ~ ~ ~ 100 2

kill @e[tag=boss.disaster_starver]
kill @e[tag=disaster_starver.starver]
kill @e[tag=disaster_starver.spit]
kill @e[tag=disaster_starver.random]
kill @e[tag=disaster_starver.villager]
bossbar remove boss:disaster_starver
schedule clear boss:disaster_starver/tick

execute if score $hunger_cave region matches 0 run function region:hunger_cave/boss1_defeat
execute if score $hunger_cave region matches 3 run tp @a[tag=bossfight_0] 125 7 965
execute if score $hunger_cave region matches 3 run gamemode survival @a[tag=bossfight_0]
execute as @a[tag=bossfight_0] run function boss:clear_negative_effect

tag @a remove bossfight_0
scoreboard players reset @a boss.death_in_boss