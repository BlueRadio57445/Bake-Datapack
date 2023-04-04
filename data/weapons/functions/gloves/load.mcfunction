# 放一個界伏盒，用於 store_offhand 跟 return_offhand
setblock 0 16 0 yellow_shulker_box

# 紀錄是否為手持拳套狀態
scoreboard objectives add weapons.gloves.holding dummy
# 丟掉副手拳套的可能性
scoreboard objectives add weapons.gloves.drop minecraft.dropped:minecraft.arrow
