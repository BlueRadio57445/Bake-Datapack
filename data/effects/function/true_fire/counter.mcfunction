scoreboard players remove @s effects.true_fire.duration 1
scoreboard players add @s effects.true_fire.check_time 20
scoreboard players set @s actionbar.custom_effect 1

execute store result score $burnTime effects.state run data get entity @s Fire 0.05
execute if score $burnTime effects.state matches -1..0 if score @s effects.true_fire.duration matches 1.. run function effects:true_fire/set_fire

execute if score @s effects.true_fire.duration matches 1.. run schedule function effects:true_fire/check 20t append
execute if score @s effects.true_fire.duration matches 0 run function effects:true_fire/clear
