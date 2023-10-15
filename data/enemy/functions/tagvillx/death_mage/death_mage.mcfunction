#手持馬鈴薯

execute if entity @a[distance=..5,predicate=enemy:death_mage/selected_potato] run effect give @s weakness 1 4 true

#
execute if score @s enemy.death_mage.skill.cd matches ..0 at @s run function enemy:tagvillx/death_mage/prepare

#記分板
execute if score @s enemy.death_mage.skill.cd matches 1.. run scoreboard players remove @s enemy.death_mage.skill.cd 1
execute unless score @s enemy.death_mage.skill.cd matches -2147483648..2147483647 run scoreboard players set @s enemy.death_mage.skill.cd 0

