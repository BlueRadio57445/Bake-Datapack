summon husk ~1.5 ~ ~ {Tags:["death_dough_marker","new"],NoAI:1b,DeathLootTable:"",Silent:1b}
summon husk ~1.5 ~ ~1.5 {Tags:["death_dough_marker","new"],NoAI:1b,DeathLootTable:"",Silent:1b}
summon husk ~-1.5 ~ ~ {Tags:["death_dough_marker","new"],NoAI:1b,DeathLootTable:"",Silent:1b}
summon husk ~-1.5 ~ ~-1.5 {Tags:["death_dough_marker","new"],NoAI:1b,DeathLootTable:"",Silent:1b}

effect give @e[tag=death_dough_marker] invisibility infinite 1 true

playsound minecraft:entity.illusioner.cast_spell master @a[distance=..10] ~ ~ ~ 1 1
execute positioned ~ ~1 ~ run function enemy:tagvillx/death_mage/particle

scoreboard players set @e[tag=new] enemy.death_mage.skill.prepare 70
scoreboard players set @s enemy.death_mage.skill.cd 400
tag @e remove new



