scoreboard objectives add weapons dummy "武器算數學"
scoreboard objectives add weapons.max_health dummy
scoreboard objectives add weapons.use_health dummy
scoreboard players set $100 weapons.use_health 100

# === 斧頭 ===

# === 弓 ===
scoreboard objectives add weapons.bow.shoot minecraft.used:minecraft.bow "發射箭矢"
data modify storage weapons:bow bouncing_bow.inGround set value 0b
scoreboard objectives add weapons.bow.bounce_times dummy "彈跳次數"
function weapons:bow/sacred_bow/load

# === 弩 ===

# === 拳套 ===
function weapons:gloves/load
scoreboard objectives add weapons.gloves.lightning_duration dummy "雷電雙拳右鍵的技能持續時間"

# === 鐮刀 ===
scoreboard objectives add scythe dummy "鐮刀算數學"
scoreboard players set $2 scythe 2
scoreboard objectives add scythe.id dummy "鐮刀用的ID"

# === 劍 ===
scoreboard objectives add weapons.sword dummy "劍也要算數學"
scoreboard objectives add weapons.sword.thief_sword minecraft.used:minecraft.carrot_on_a_stick "海盜短劍右鍵"
scoreboard objectives add weapons.sword.thief_sword.mob dummy "偵測盜賊短劍附近的人數"
scoreboard objectives add weapons.sword.thief_sword.duration dummy "盜賊短劍持續時間"
#declare storage weapons:sword
data merge storage weapons:sword {fat_sword:{Amount:[1.0d, 0.0d]}}

# === 三叉戟 ===

# === 鞭子 ===
scoreboard objectives add weapons.whip.time dummy "魚鉤勾住的時間"

# === 雜項 ===
function weapons:misc/lily_pad/load
function weapons:misc/honey_horn/load












