scoreboard players operation @s effects.fire.duration = $set effects.duration
scoreboard players operation @s effects.fire.check_time = $gametime general.utils
scoreboard players add @s effects.fire.check_time 10
scoreboard players set @s actionbar.custom_effect 1
schedule function effects:fire/check 10t append
