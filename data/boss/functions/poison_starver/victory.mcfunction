title @a[tag=poison_starver.player] title {"text":"恭喜勝利！","color":"green","bold":true}
title @a[tag=poison_starver.player] subtitle {"text":"你成功打敗嘔噁餓死鬼！","color":"white","bold":true}
execute at @a[tag=poison_starver.player] run playsound entity.player.levelup block @a ~ ~ ~ 100 0.8
execute at @a[tag=poison_starver.player] run summon firework_rocket ~ ~3 ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:1b,Colors:[I;11206400],FadeColors:[I;65433]}]}}},LifeTime:12}

function boss:poison_starver/reset

# 記得加幾行處理玩家重生點的東西
tp @a[gamemode=spectator,tag=poison_starver.player] @p[gamemode=!spectator,tag=poison_starver.player]
gamemode adventure @a[gamemode=spectator,tag=poison_starver.player]
execute as @a[tag=poison_starver.player] run function boss:clear_negative_effect
function region:hunger_cave/boss/victory

tag @a remove poison_starver.player
scoreboard players reset @a boss.death_in_boss