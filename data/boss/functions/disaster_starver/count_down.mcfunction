# schedule遞迴
# 分數還是3的時候有執行位置
execute if score $disaster_starver boss.count_down matches 3 run title @a[tag=bossfight_0] title {"text": "3"}
execute if score $disaster_starver boss.count_down matches 3 at @a[tag=bossfight_0] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~
execute if score $disaster_starver boss.count_down matches 3 run summon marker ~ ~ ~ {Tags:["boss.count_down", "disaster_starver.count_down"]}

execute if score $disaster_starver boss.count_down matches 2 run title @a[tag=bossfight_0] title {"text": "2"}
execute if score $disaster_starver boss.count_down matches 2 at @a[tag=bossfight_0] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~

execute if score $disaster_starver boss.count_down matches 1 run title @a[tag=bossfight_0] title {"text": "1"}
execute if score $disaster_starver boss.count_down matches 1 at @a[tag=bossfight_0] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~

execute if score $disaster_starver boss.count_down matches 0 run title @a[tag=bossfight_0] title {"text": "戰鬥開始!"}
execute if score $disaster_starver boss.count_down matches 0 at @e[type=marker,tag=disaster_starver.count_down] run function boss:disaster_starver/summon
execute if score $disaster_starver boss.count_down matches 0 at @e[type=marker,tag=disaster_starver.count_down] run function boss:disaster_starver/tick
execute if score $disaster_starver boss.count_down matches 0 at @a[tag=bossfight_0] run playsound minecraft:entity.ender_dragon.growl master @p ~ ~ ~
execute if score $disaster_starver boss.count_down matches 0 run kill @e[type=marker,tag=disaster_starver.count_down]
execute if score $disaster_starver boss.count_down matches 0 run scoreboard players reset $disaster_starver boss.count_down

execute if score $disaster_starver boss.count_down matches 1..3 run scoreboard players remove $disaster_starver boss.count_down 1

execute if score $disaster_starver boss.count_down matches 0..3 run schedule function boss:disaster_starver/count_down 1s replace