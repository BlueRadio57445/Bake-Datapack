#declare storage actionbar:effect
#declare storage actionbar:player
#declare storage actionbar:time
#declare storage actionbar:cooldown

scoreboard objectives add actionbar.state dummy
scoreboard objectives add actionbar.custom_effect dummy
scoreboard objectives add actionbar.time dummy
scoreboard objectives add actionbar.update dummy
scoreboard objectives add actionbar.effect.update_time dummy

scoreboard objectives add actionbar.cooldown dummy
scoreboard objectives add actionbar.cooldown.hotbar_update_time dummy
scoreboard objectives add actionbar.cooldown.hotbar_target_time dummy
scoreboard objectives add actionbar.cooldown.offhand_update_time dummy
scoreboard objectives add actionbar.cooldown.offhand_target_time dummy

scoreboard objectives add actionbar.player_mod dummy

function actionbar:effect/type_set
function actionbar:cooldown/table_set
function actionbar:regular
