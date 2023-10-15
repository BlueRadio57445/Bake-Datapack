execute if score @s enemy.death_mage.skill.prepare matches 1.. run scoreboard players remove @s enemy.death_mage.skill.prepare 1

particle block sand ~ ~.5 ~ .3 .6 .3 0 20
particle dust 0.792 0.753 0.494 1 ~ ~.5 ~ .3 .5 .3 0 50

execute if score @s enemy.death_mage.skill.prepare matches ..0 run function enemy:tagvillx/death_mage/cast


