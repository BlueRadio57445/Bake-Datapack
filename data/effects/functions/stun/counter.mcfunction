scoreboard players remove @s effects.stun.duration 1
scoreboard players add @s effects.stun.check_time 20
scoreboard players set @s actionbar.custom_effect 1
execute at @s anchored eyes run particle minecraft:dust{color:[1,1,0],scale:1} ^ ^ ^ 0.4 0.4 0.4 0.05 5 normal
execute if score @s effects.stun.duration matches 1.. run schedule function effects:stun/check 20t append
execute if score @s effects.stun.duration matches 0 run function effects:stun/clear
