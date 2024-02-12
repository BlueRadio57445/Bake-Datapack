# schedule遞迴
# 分數還是3的時候有執行位置
execute if score $poison_starver boss.count_down matches 3 run title @a[tag=poison_starver.player] title {"text": "3"}
execute if score $poison_starver boss.count_down matches 3 at @a[tag=poison_starver.player] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~
execute if score $poison_starver boss.count_down matches 3 run summon marker ~ ~ ~ {Tags:["boss.count_down", "poison_starver.count_down"]}
execute if score $poison_starver boss.count_down matches 3 run summon marker ~ ~ ~ {Tags:["poison_starver.center"]}

execute if score $poison_starver boss.count_down matches 2 run title @a[tag=poison_starver.player] title {"text": "2"}
execute if score $poison_starver boss.count_down matches 2 at @a[tag=poison_starver.player] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~

execute if score $poison_starver boss.count_down matches 1 run title @a[tag=poison_starver.player] title {"text": "1"}
execute if score $poison_starver boss.count_down matches 1 at @a[tag=poison_starver.player] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~

execute if score $poison_starver boss.count_down matches 0 run title @a[tag=poison_starver.player] title {"text": "戰鬥開始!"}
execute if score $poison_starver boss.count_down matches 0 at @e[type=marker,tag=poison_starver.count_down] run function boss:poison_starver/summon
execute if score $poison_starver boss.count_down matches 0 at @e[type=marker,tag=poison_starver.count_down] run function boss:poison_starver/tick
execute if score $poison_starver boss.count_down matches 0 at @a[tag=poison_starver.player] run playsound minecraft:entity.ender_dragon.growl master @p ~ ~ ~
execute if score $poison_starver boss.count_down matches 0 run kill @e[type=marker,tag=poison_starver.count_down]
execute if score $poison_starver boss.count_down matches 0 run scoreboard players reset $poison_starver boss.count_down

execute if score $poison_starver boss.count_down matches 1..3 run scoreboard players remove $poison_starver boss.count_down 1

execute if score $poison_starver boss.count_down matches 0..3 run schedule function boss:poison_starver/count_down 1s replace