scoreboard objectives add weapons dummy "武器算數學"

# === 斧頭 ===

# === 弓 ===
scoreboard objectives add weapons.bow.shoot minecraft.used:minecraft.bow "發射箭矢"
data modify storage weapons:bow bouncing_bow.inGround set value 0b
scoreboard objectives add weapons.bow.bounce_times dummy "彈跳次數"
function weapons:bow/sacred_bow/load

# === 弩 ===

# === 拳套 ===
function weapons:gloves/load

# === 鐮刀 ===
scoreboard objectives add scythe dummy "鐮刀算數學"
scoreboard players set $2 scythe 2
scoreboard objectives add scythe.id dummy "鐮刀用的ID"

# === 劍 ===
function weapons:sword/blood_sword/load
scoreboard objectives add weapons.sword dummy "劍也要算數學"
data merge storage weapons:sword {fat_sword:{Amount:[1.0d, 0.0d]}}

# === 三叉戟 ===

# === 鞭子 ===
scoreboard objectives add weapons.whip.time dummy "魚鉤勾住的時間"

# === 雜項 ===
function weapons:misc/lily_pad/load
function weapons:misc/honey_horn/load












