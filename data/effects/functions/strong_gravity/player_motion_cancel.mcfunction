advancement revoke @s only effects:strong_gravity/hurt
#tp @s 0 0 0
#tp @s ~ ~ ~ ~ ~
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["effects.motion_cancel","effects.new"],Duration:2}
ride @s mount @e[limit=1,type=minecraft:area_effect_cloud,tag=effects.new]
tag @e remove effects.new
function actionbar:update
scoreboard players set @s actionbar.update 2
