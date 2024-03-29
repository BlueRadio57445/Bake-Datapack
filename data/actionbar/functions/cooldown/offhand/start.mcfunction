function general:player_data/get {path:"Actionbar",target:"storage actionbar:player Data"}

scoreboard players operation $level actionbar.cooldown = $current actionbar.cooldown
scoreboard players remove $level actionbar.cooldown 1
scoreboard players operation $level actionbar.cooldown *= $16 general.const
scoreboard players operation $level actionbar.cooldown /= $length actionbar.cooldown
scoreboard players operation $level actionbar.cooldown > $0 general.const

scoreboard players operation $targetTime actionbar.cooldown = $gametime general.utils
scoreboard players operation $targetTime actionbar.cooldown += $current actionbar.cooldown
scoreboard players operation @s actionbar.cooldown.offhand_target_time = $targetTime actionbar.cooldown

scoreboard players operation $updateTime actionbar.cooldown = $level actionbar.cooldown
scoreboard players operation $updateTime actionbar.cooldown *= $length actionbar.cooldown
scoreboard players operation $updateTime actionbar.cooldown /= $16 general.const
scoreboard players operation $updateTime actionbar.cooldown -= $targetTime actionbar.cooldown
scoreboard players operation $updateTime actionbar.cooldown *= $-1 general.const
scoreboard players operation $updateTime actionbar.cooldown > $gametime general.utils
scoreboard players operation $updateTime actionbar.cooldown < $targetTime actionbar.cooldown
scoreboard players operation @s actionbar.cooldown.offhand_update_time = $updateTime actionbar.cooldown

execute store result storage actionbar:player Data.cooldown.offhand.slot byte 1 run scoreboard players get $slot actionbar.cooldown
execute store result storage actionbar:player Data.cooldown.offhand.level byte 1 run scoreboard players get $level actionbar.cooldown
execute store result storage actionbar:player Data.cooldown.offhand.length int 1 run scoreboard players get $length actionbar.cooldown
execute store result storage actionbar:player Data.cooldown.offhand.target_time int 1 run scoreboard players get $targetTime actionbar.cooldown
execute store result storage actionbar:player Data.cooldown.offhand.update_time int 1 run scoreboard players get $updateTime actionbar.cooldown

function actionbar:cooldown/offhand/mask with storage actionbar:player Data.cooldown.offhand

function general:player_data/store {path:"Actionbar",target:"storage actionbar:player Data"}

function actionbar:update
