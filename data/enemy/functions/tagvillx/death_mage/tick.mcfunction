#手持馬鈴薯
execute as @e[tag=death_mage] at @s if entity @a[distance=..5,nbt={SelectedItem:{id:"minecraft:potato"}}] run effect give @s weakness 1 4 true
execute as @e[tag=death_mob] at @s if entity @a[distance=..5,nbt={SelectedItem:{id:"minecraft:potato"}}] run effect give @s weakness 1 4 true


#
execute as @e[tag=death_mage] unless score @s enemy.death_mage.skill.cd matches 0.. unless score @s enemy.death_mage.skill.cd matches ..0 run scoreboard players set @s enemy.death_mage.skill.cd 0
execute as @e[tag=death_mage] if score @s enemy.death_mage.skill.cd matches ..0 at @s run function enemy:tagvillx/death_mage/prepare

#記分板
execute as @e[tag=death_mage] if score @s enemy.death_mage.skill.cd matches 1.. run scoreboard players remove @s enemy.death_mage.skill.cd 1
execute as @e[tag=death_mob_tag] if score @s enemy.death_mage.skill.prepare matches 1.. run scoreboard players remove @s enemy.death_mage.skill.prepare 1

# particle
execute as @e[tag=death_mob_tag] at @s run particle block sand ~ ~.5 ~ .3 .6 .3 0 20
execute as @e[tag=death_mob_tag] at @s run particle dust 0.792 0.753 0.494 1 ~ ~.5 ~ .3 .5 .3 0 50

#招喚
execute store result score $count enemy.death_mage.skill.count run execute if entity @e[tag=death_mob]
execute as @e[tag=death_mob_tag] at @s if score @s enemy.death_mage.skill.prepare matches ..0 if score $count enemy.death_mage.skill.count matches ..8 run function enemy:tagvillx/death_mage/cast
