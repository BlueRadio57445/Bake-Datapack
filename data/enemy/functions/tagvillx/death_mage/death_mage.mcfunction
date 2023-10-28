#手持馬鈴薯

execute if entity @a[distance=..5,predicate=enemy:death_mage/selected_potato] run effect give @s weakness 1 4 true

#
execute if score @s enemy.death_mage.skill.cd matches ..0 at @s run function enemy:tagvillx/death_mage/prepare

#記分板
scoreboard players remove @s[scores={enemy.death_mage.skill.cd=0..}] enemy.death_mage.skill.cd 1
execute unless score @s enemy.death_mage.skill.cd matches -2147483648..2147483647 run scoreboard players set @s enemy.death_mage.skill.cd 0

execute store result score $count_dough enemy.death_mage.skill.count run execute if entity @e[tag=death_dough,distance=..15]
execute store result score $count_marker enemy.death_mage.skill.count run execute if entity @e[tag=death_dough_marker,distance=..15]

execute store result score @s enemy.death_mage.skill.count run scoreboard players operation $count_dough enemy.death_mage.skill.count += $count_marker enemy.death_mage.skill.count

execute if score @s enemy.death_mage.skill.count matches 6.. run scoreboard players set @s enemy.death_mage.skill.cd 100