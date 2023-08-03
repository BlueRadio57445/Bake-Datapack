# 執行者、執行位置是玩家
scoreboard players operation $search scythe.id = @s general.id
execute as @e[type=interaction,tag=scythe.box] if score @s scythe.id = $search scythe.id run tag @s add this
execute unless entity @e[tag=this] run summon interaction ~ ~0.5 ~ {Tags:["scythe.new_box","scythe.box"],height:1.5f,width:0.8f}
scoreboard players operation @e[tag=scythe.new_box] scythe.id = @s general.id
tag @e[tag=scythe.new_box,type=interaction] remove scythe.new_box
tag @e[tag=this] remove this