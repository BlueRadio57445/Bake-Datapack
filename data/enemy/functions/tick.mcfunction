function enemy:tagvillx/tick


execute as @e[type=axolotl,tag=enemy.elite_axolotl] at @s run function enemy:hunger_cave/elite_axolotl/tick

execute as @e[type=#object,tag=enemy.decoration,predicate=!enemy:vehicle] run kill @s
function enemy:radio/golden_grapes/tick
