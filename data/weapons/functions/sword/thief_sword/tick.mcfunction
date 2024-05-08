scoreboard players reset @a[scores={weapons.sword.thief_sword=1..},predicate=!weapons:sword/thief_sword/selected] weapons.sword.thief_sword
execute as @a[predicate=weapons:sword/thief_sword/selected,scores={weapons.sword.thief_sword=1..}] at @s run function weapons:sword/thief_sword/cast

#
scoreboard players remove @a[scores={weapons.sword.thief_sword.duration=1..}] weapons.sword.thief_sword.duration 1

#時間結束
tag @a[predicate=!weapons:sword/thief_sword/selected,tag=weapons.thief_sword.used] remove weapons.thief_sword.used
tag @a[predicate=weapons:sword/thief_sword/selected,tag=weapons.thief_sword.used,scores={weapons.sword.thief_sword.duration=..0}] remove weapons.thief_sword.used
execute as @a[predicate=weapons:sword/thief_sword/skill,tag=!weapons.thief_sword.used] at @s run function weapons:sword/thief_sword/remove_skill