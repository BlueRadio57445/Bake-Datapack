# 執行者、執行位置是那個碰撞箱
scoreboard players operation $search scythe.id = @s scythe.id
execute as @a if score @s general.id = $search scythe.id run tag @s add this
execute at @a[tag=this,predicate=!weapons:scythe/looking] run tp @s ~ ~ ~
execute at @a[tag=this,predicate=weapons:scythe/looking] run tp @s ~ ~1 ~
execute if entity @a[tag=this,predicate=!weapons:scythe/hold_scythe] run kill @s
tag @a[tag=this] remove this