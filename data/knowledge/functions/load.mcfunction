scoreboard objectives add knowledge dummy "知識算數學用記分板"
scoreboard objectives add knowledge.use minecraft.used:minecraft.carrot_on_a_stick "使用知識"
scoreboard objectives add knowledge.mainhand dummy "主手拿知識"
scoreboard objectives add knowledge.offhand dummy "副手拿知識"
scoreboard objectives add knowledge.is_pay_off dummy "扣經驗值了沒"
scoreboard objectives add knowledge.id dummy "知識的ID"

scoreboard objectives add knowledge.cd.fire_ball dummy "火球冷卻時間"
scoreboard objectives add knowledge.cd.fire_fan dummy "火焰扇冷卻時間"
scoreboard objectives add knowledge.cd.fire_field dummy "火焰領域冷卻時間"
scoreboard objectives add knowledge.cd.end_fire_ball dummy "末火球冷卻時間"
scoreboard objectives add knowledge.cd.end_fire_fan dummy "末火扇冷卻時間"
scoreboard objectives add knowledge.cd.end_fire_field dummy "末火領域冷卻時間"
scoreboard objectives add knowledge.cd.fire_cannon dummy "末火大砲冷卻時間"
scoreboard objectives add knowledge.cd.water_bubble dummy "泡泡冷卻時間"
scoreboard objectives add knowledge.cd.water_swim dummy "游泳冷卻時間"
scoreboard objectives add knowledge.cd.water_wave dummy "波浪冷卻時間"
scoreboard objectives add knowledge.cd.water_swirl dummy "漩渦冷卻時間"
scoreboard objectives add knowledge.cd.earth_shield dummy "護盾 冷卻時間"
scoreboard objectives add knowledge.cd.earth_field dummy "花園冷卻時間"
scoreboard objectives add knowledge.cd.earth_wall dummy "土牆冷卻時間"
scoreboard objectives add knowledge.cd.earth_pillar dummy "土槌冷卻時間"

kill @e[type=marker,tag=fire_field]
execute unless entity @e[type=marker,tag=fire_field] run summon marker 0 0 0 {Tags:["fire_field"]}

scoreboard objectives add knowledge.fire_fan dummy "火焰扇 動畫幀"
scoreboard objectives add knowledge.fire_field dummy "火焰領域持續時間"
scoreboard objectives add knowledge.fire_cannon dummy "末火大砲 動畫幀"

scoreboard objectives add knowledge.end_fire dummy "末火狀態 持續時間"
scoreboard objectives add knowledge.end_fire_fan dummy "末火扇 動畫幀"
scoreboard objectives add knowledge.end_fire_field dummy "末火領域持續時間"

scoreboard objectives add knowledge.fire_ball dummy "火球持續時間"

scoreboard objectives add knowledge.water_swirl dummy "水漩渦 持續時間"
scoreboard objectives add knowledge.water_wave dummy "波浪 持續時間"

scoreboard objectives add knowledge.earth_shield dummy "護盾 充能次數"

function knowledge:end_fire_schedule