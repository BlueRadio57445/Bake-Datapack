title @a[tag=bossfight_77] title {"text":"恭喜勝利！","color":"green","bold":true}
title @a[tag=bossfight_77] subtitle {"text":"你成功打敗嘔噁餓死鬼！","color":"white","bold":true}
execute at @a[tag=bossfight_77] run playsound entity.player.levelup block @a ~ ~ ~ 100 0.8
execute at @a[tag=bossfight_77] run summon firework_rocket ~ ~3 ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:1b,Colors:[I;11206400],FadeColors:[I;65433]}]}}},LifeTime:12}

kill @e[tag=poison_starver.starver]
kill @e[tag=poison_starver.spit]
kill @e[tag=poison_starver.random]
kill @e[tag=poison_starver.villager]
kill @e[tag=poison_starver.center]
schedule clear boss:poison_starver/tick
bossbar remove boss:poison_starver

# 記得加幾行處理玩家重生點的東西
tp @a[gamemode=spectator,tag=bossfight_77] @p[gamemode=!spectator,tag=bossfight_77]
gamemode adventure @a[gamemode=spectator,tag=bossfight_77]
execute as @a[tag=bossfight_77] run function boss:clear_negative_effect
function region:hunger_cave/boss/victory

tag @a remove bossfight_77
scoreboard players reset @a boss.death_in_boss