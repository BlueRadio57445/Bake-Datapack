execute at @s anchored eyes run particle minecraft:dust{color:[1,1,0],scale:1} ^ ^ ^ 0.4 0.4 0.4 0.05 5 normal
$scoreboard players set @s effects.stun.duration $(duration)
scoreboard players operation @s effects.stun.check_time = $gametime general.utils
tag @s add effects.stun
attribute @s generic.jump_strength modifier add 00000C00-0000-0C00-0000-0C0000000C00 "effects:stun" -1 add_multiplied_total
attribute @s generic.movement_speed modifier add 00000C00-0000-0C00-0000-0C0000000C00 "effects:stun" -1 add_multiplied_total
scoreboard players add @s effects.stun.check_time 20
scoreboard players set @s actionbar.custom_effect 1
schedule function effects:stun/check 20t append
