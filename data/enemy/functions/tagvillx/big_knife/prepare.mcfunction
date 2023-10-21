#
effect clear @s resistance
effect clear @a[distance=..7] resistance
scoreboard players set @s enemy.big_knife.skill.prepare 40
data modify entity @s NoAI set value 1
scoreboard players set @s enemy.big_knife.skill.cd 400
execute positioned ~ ~2.8 ~ run function enemy:tagvillx/big_knife/summon_knife

