# 重製任務的函數
scoreboard players reset $hunger_cave.monster quest.state
function quest:hunger_cave/monster/dialogues
advancement revoke @a from quest:hunger_cave/monster/start

kill @e[tag=quest.hunger_cave.deadbody]
summon minecraft:armor_stand -157.68 -51.30 970.37 {Tags:["quest.hunger_cave.deadbody"],Rotation:[140.0f,32.0f],ShowArms:1b,NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"skeleton_skull",Count:1b}],Pose:{Head:[32f,0f,0f],LeftLeg:[280f,323f,0f],RightLeg:[282f,29f,0f],LeftArm:[0f,0f,346f],RightArm:[332f,23f,326f]}}
loot replace entity @e[tag=quest.hunger_cave.deadbody] weapon.mainhand loot quest:hunger_cave/monster/rope
