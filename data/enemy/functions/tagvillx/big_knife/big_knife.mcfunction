#執行者:巨妖刀 位置:巨妖刀


execute unless score @s enemy.big_knife.skill.cd matches -2147483648..2147483647 run scoreboard players set @s enemy.big_knife.skill.cd 0
scoreboard players remove @s[scores={enemy.big_knife.skill.cd=1..}] enemy.big_knife.skill.cd 1
scoreboard players remove @s[scores={enemy.big_knife.skill.prepare=1..}] enemy.big_knife.skill.prepare 1

#prepare
execute if score @s enemy.big_knife.skill.cd matches ..0 run function enemy:tagvillx/big_knife/cast
tp @s[scores={enemy.big_knife.skill.prepare=5..}] ~ ~ ~ facing entity @p

#cast
execute if score @s enemy.big_knife.skill.prepare matches ..0 at @s run function enemy:tagvillx/big_knife/slash

#
data modify entity @s[scores={enemy.big_knife.skill.prepare=..1}] NoAI set value 0
