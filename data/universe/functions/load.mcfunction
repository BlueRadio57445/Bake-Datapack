scoreboard objectives add universe dummy "宇宙算數學"
scoreboard objectives add universe.level dummy "宇貓等級"
scoreboard objectives add universe.scroll dummy "宇宙 滾輪"

scoreboard objectives add universe.cd.test_universe2 dummy "測試宇宙的冷卻時間"

# 宇宙效果
schedule function universe:mg_universe/schedule_effect 1t
