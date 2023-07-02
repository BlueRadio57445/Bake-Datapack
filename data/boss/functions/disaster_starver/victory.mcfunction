title @a[tag=bossfight_0] title {"text":"恭喜勝利！","color":"green","bold":true}
title @a[tag=bossfight_0] subtitle {"text":"你成功打敗災厄餓死鬼！","color":"white","bold":true}
execute at @a[tag=bossfight_0] run playsound entity.player.levelup block @a ~ ~ ~ 100 0.8
execute at @a[tag=bossfight_0] run summon firework_rocket ~ ~3 ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:1b,Colors:[I;11206400],FadeColors:[I;65433]}]}}}}


kill @e[tag=disaster_starver.starver]
kill @e[tag=disaster_starver.spit]
kill @e[tag=disaster_starver.random]
schedule clear boss:disaster_starver/tick
bossbar remove boss:disaster_starver

# 記得加幾行處理玩家重生點的東西
tp @a[gamemode=spectator,tag=bossfight_0] @p[gamemode=!spectator,tag=bossfight_0]
gamemode adventure @a[gamemode=spectator,tag=bossfight_0]
execute as @a[tag=bossfight_0] run function boss:clear_negative_effect

tag @a remove bossfight_0
scoreboard players reset @a boss.death_in_boss