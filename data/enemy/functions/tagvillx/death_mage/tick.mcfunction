# 法師
execute as @e[tag=death_mage] run function enemy:tagvillx/death_mage/death_mage

# 小弟
execute as @e[tag=death_dough] at @s if entity @a[distance=..5,predicate=enemy:death_mage/selected_potato] run effect give @s weakness 1 4 true

# 沙團
execute as @e[tag=death_dough_marker] at @s run function enemy:tagvillx/death_mage/death_dough_marker

#
execute if score $count enemy.death_mage.skill.count matches 8.. run scoreboard players set @e[tag=death_mage] enemy.death_mage.skill.cd 100
execute store result score $count_dough enemy.death_mage.skill.count run execute if entity @e[tag=death_dough]
execute store result score $count_marker enemy.death_mage.skill.count run execute if entity @e[tag=death_dough_marker]
execute store result score $count enemy.death_mage.skill.count run scoreboard players operation $count_dough enemy.death_mage.skill.count += $count_marker enemy.death_mage.skill.count