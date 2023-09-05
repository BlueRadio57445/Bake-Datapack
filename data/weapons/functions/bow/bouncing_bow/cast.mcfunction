# 執行者是箭矢，沒有執行位置
scoreboard players set @s weapons.bow.bounce_times 7
tag @s add arrow.bouncing_bow
execute at @s run summon marker ~ ~ ~ {Tags:["bouncing_bow.marker", "bouncing_bow.new_marker"]}
ride @e[type=marker,limit=1,tag=bouncing_bow.new_marker] mount @s
tag @e[type=marker,tag=bouncing_bow.new_marker] remove bouncing_bow.new_marker