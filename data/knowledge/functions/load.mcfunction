scoreboard objectives add knowledge dummy "知識算數學用記分板"
scoreboard players set $20 knowledge 20
scoreboard objectives add knowledge.use minecraft.used:minecraft.carrot_on_a_stick "使用知識"
scoreboard objectives add knowledge.mainhand dummy "主手拿知識"
scoreboard objectives add knowledge.offhand dummy "副手拿知識"
scoreboard objectives add knowledge.is_pay_off dummy "扣經驗值了沒"
scoreboard objectives add knowledge.id dummy "知識的ID"

scoreboard objectives add knowledge.cd.mainhand dummy "主手冷卻時間"
scoreboard objectives add knowledge.cd.offhand dummy "副手冷卻時間"
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
scoreboard objectives add knowledge.cd.air_feather dummy "羽毛 冷卻時間"
scoreboard objectives add knowledge.cd.air_cut dummy "吸回 冷卻時間"
scoreboard objectives add knowledge.cd.air_run dummy "風流 冷卻時間"
scoreboard objectives add knowledge.cd.air_tornado dummy "龍捲風 冷卻時間"
scoreboard objectives add knowledge.cd.lightning dummy "閃電五連鞭 冷卻時間"
scoreboard objectives add knowledge.cd.lightning_mad dummy "怒雷 冷卻時間"

kill @e[type=marker,tag=fire_field]
execute unless entity @e[type=marker,tag=fire_field] run summon marker 0 0 0 {Tags:["fire_field"],UUID:[I;0,0,0,256]}

scoreboard objectives add knowledge.fire_fan dummy "火焰扇 動畫幀"
scoreboard objectives add knowledge.fire_field dummy "火焰領域持續時間"
scoreboard objectives add knowledge.fire_cannon dummy "末火大砲 動畫幀"

scoreboard objectives add knowledge.end_fire dummy "末火狀態 持續時間"
scoreboard objectives add knowledge.end_fire_fan dummy "末火扇 動畫幀"
scoreboard objectives add knowledge.end_fire_field dummy "末火領域持續時間"

scoreboard objectives add knowledge.earth_shield dummy "護盾 充能次數"

scoreboard objectives add knowledge.air_run dummy "風流 持續時間 "

scoreboard objectives add knowledge.object_duration dummy "物件持續時間"

function knowledge:end_fire_schedule
function knowledge:air_run_schedule
function knowledge:cool_down/schedule

scoreboard objectives add knowledge.lightning dummy
kill @e[type=marker,tag=bolt_dir]
execute unless entity @e[tag=bolt_dir1] run summon marker 0 0 0 {Tags:["bolt_dir1","bolt_dir"]}
execute unless entity @e[tag=bolt_dir2] run summon marker 0 0 0 {Tags:["bolt_dir2","bolt_dir"]}
execute unless entity @e[tag=bolt_dir3] run summon marker 0 0 0 {Tags:["bolt_dir3","bolt_dir"]}
execute unless entity @e[tag=bolt_dir4] run summon marker 0 0 0 {Tags:["bolt_dir4","bolt_dir"]}
execute unless entity @e[tag=bolt_dir5] run summon marker 0 0 0 {Tags:["bolt_dir5","bolt_dir"]}
execute unless entity @e[tag=bolt_dir6] run summon marker 0 0 0 {Tags:["bolt_dir6","bolt_dir"]}
execute unless entity @e[tag=bolt_dir7] run summon marker 0 0 0 {Tags:["bolt_dir7","bolt_dir"]}
execute unless entity @e[tag=bolt_dir8] run summon marker 0 0 0 {Tags:["bolt_dir8","bolt_dir"]}