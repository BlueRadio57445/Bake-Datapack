scoreboard objectives add universe dummy "宇宙算數學"
scoreboard objectives add universe.level dummy "宇貓等級"
scoreboard objectives add universe.scroll dummy "宇宙 滾輪"
scoreboard objectives add universe.drop_bundle minecraft.dropped:minecraft.bundle

scoreboard objectives add universe.cd.test_universe2 dummy "測試宇宙的冷卻時間"

scoreboard objectives add universe.lvl.vitality_universe dummy "活力宇宙等級"
scoreboard objectives add universe.lvl.furry_universe dummy "毛毛宇宙等級"

scoreboard objectives add universe.lvl.sword_universe dummy "劍宇宙等級"
scoreboard objectives add universe.lvl.axe_universe dummy "斧頭宇宙等級"
scoreboard objectives add universe.lvl.trident_universe dummy "三叉戟宇宙等級"
scoreboard objectives add universe.lvl.hammer_universe dummy "槌子宇宙等級"
scoreboard objectives add universe.lvl.scythe_universe dummy "鐮刀宇宙等級"
scoreboard objectives add universe.lvl.whip_universe dummy "鞭子宇宙等級"
scoreboard objectives add universe.lvl.gloves_universe dummy "拳套宇宙等級"

# 宇宙效果
schedule function universe:mg_universe/schedule_effect 1t
