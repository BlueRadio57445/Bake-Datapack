execute unless score @s enemy.big_knife.skill.cd matches -2147483648..2147483647 run scoreboard players set @s enemy.big_knife.skill.cd 0
scoreboard players remove @s[scores={enemy.big_knife.skill.cd=1..}] enemy.big_knife.skill.cd 1
scoreboard players remove @s[scores={enemy.big_knife.skill.prepare=1..}] enemy.big_knife.skill.prepare 1

#prepare
execute if score @s enemy.big_knife.skill.cd matches ..0 run function enemy:tagvillx/big_knife/prepare
tp @s[scores={enemy.big_knife.skill.prepare=5..}] ~ ~ ~ facing entity @p

#cast
execute if score @s enemy.big_knife.skill.prepare matches ..0 at @s run function enemy:tagvillx/big_knife/cast

#animation
execute if score @s enemy.big_knife.skill.prepare matches 1.. at @s run function enemy:tagvillx/big_knife/animation

#
data modify entity @s[scores={enemy.big_knife.skill.prepare=..1}] NoAI set value 0

#旋轉
execute as @e[tag=big_knife_display,tag=1] if score @s enemy.big_knife.id = @e[tag=big_knife,limit=1,sort=nearest] enemy.big_knife.id run data modify entity @s Rotation[0] set from entity @e[tag=big_knife,limit=1,sort=nearest] Rotation[0]