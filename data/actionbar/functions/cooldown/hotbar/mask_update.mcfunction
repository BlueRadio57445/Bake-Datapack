execute if score @s actionbar.cooldown.hotbar_update_time > $gametime general.utils run return 0

execute if score @s actionbar.cooldown.hotbar_target_time <= $gametime general.utils run function actionbar:cooldown/hotbar/end
execute unless score @s actionbar.cooldown.hotbar_target_time = @s actionbar.cooldown.hotbar_target_time run return 0

function general:player_data/get {path:"Actionbar",target:"storage actionbar:player Data"}

execute store result score $length actionbar.cooldown run data get storage actionbar:player Data.cooldown.hotbar.length
scoreboard players operation $level actionbar.cooldown = @s actionbar.cooldown.hotbar_target_time
scoreboard players operation $level actionbar.cooldown -= $gametime general.utils
scoreboard players remove $level actionbar.cooldown 1
scoreboard players operation $level actionbar.cooldown *= $16 general.const
scoreboard players operation $level actionbar.cooldown /= $length actionbar.cooldown
scoreboard players operation $level actionbar.cooldown > $0 general.const

scoreboard players operation $updateTime actionbar.cooldown = $level actionbar.cooldown
scoreboard players operation $updateTime actionbar.cooldown *= $length actionbar.cooldown
scoreboard players operation $updateTime actionbar.cooldown /= $16 general.const
scoreboard players operation $updateTime actionbar.cooldown -= @s actionbar.cooldown.hotbar_target_time
scoreboard players operation $updateTime actionbar.cooldown *= $-1 general.const
scoreboard players operation $updateTime actionbar.cooldown > $gametime general.utils
scoreboard players operation $updateTime actionbar.cooldown < @s actionbar.cooldown.hotbar_target_time
scoreboard players operation @s actionbar.cooldown.hotbar_update_time = $updateTime actionbar.cooldown

execute store result storage actionbar:player Data.cooldown.hotbar.level byte 1 run scoreboard players get $level actionbar.cooldown
execute store result storage actionbar:player Data.cooldown.hotbar.update_time int 1 run scoreboard players get $updateTime actionbar.cooldown

function actionbar:cooldown/hotbar/mask with storage actionbar:player Data.cooldown.hotbar

function general:player_data/store {path:"Actionbar",target:"storage actionbar:player Data"}

function actionbar:update
