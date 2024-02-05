scoreboard players remove @s effects.fire.duration 1
scoreboard players add @s effects.fire.check_time 20
scoreboard players set @s actionbar.custom_effect 1
execute store result score $burnTime effects.state run data get entity @s Fire 0.05
execute if score $burnTime effects.state matches -1 run scoreboard players set @s effects.fire.duration 0
execute if score @s effects.fire.duration > @s effects.fire.prev_duration if score $burnTime effects.state matches 1 run function effects:fire/set_fire
execute if score @s effects.fire.duration = @s effects.fire.prev_duration run function effects:fire/set_fire
execute if score @s effects.fire.duration matches 1.. run schedule function effects:fire/check 20t append
execute if score @s effects.fire.duration matches 0 run function effects:fire/clear
