scoreboard objectives add actionbar.state dummy
scoreboard objectives add actionbar.custom_effect dummy
scoreboard objectives add actionbar.time dummy
scoreboard objectives add actionbar.update dummy
scoreboard objectives add actionbar.effect.update_time dummy
function actionbar:effect/type_set
schedule function actionbar:regular 12t
