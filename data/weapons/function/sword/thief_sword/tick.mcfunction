execute as @a[scores={weapons.sword.thief_sword.using=1..},advancements={weapons:sword/thief_sword/using=false}] at @s[predicate=weapons:sword/thief_sword/selected,predicate=!weapons:sword/thief_sword/skill] run function weapons:sword/thief_sword/cast
scoreboard players reset @a[scores={weapons.sword.thief_sword.using=1..},advancements={weapons:sword/thief_sword/using=false}] weapons.sword.thief_sword.using
advancement revoke @a[advancements={weapons:sword/thief_sword/using=true}] only weapons:sword/thief_sword/using
