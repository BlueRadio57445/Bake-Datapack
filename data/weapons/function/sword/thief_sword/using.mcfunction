scoreboard players add @s weapons.sword.thief_sword.using 1
scoreboard players operation $mod weapons.sword.thief_sword.using = @s weapons.sword.thief_sword.using
scoreboard players operation $mod weapons.sword.thief_sword.using %= $10 general.const
execute if score $mod weapons.sword.thief_sword.using matches 1 run function weapons:sword/thief_sword/particle_1
