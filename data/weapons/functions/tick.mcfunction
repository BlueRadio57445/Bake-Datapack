# === 斧頭 ===
function weapons:axe/hunangry

# === 弓 ===
function weapons:bow/tick
function weapons:bow/sacred_bow/tick
function weapons:bow/light_bow/tick
function weapons:bow/bouncing_bow/tick

# === 弩 ===

# === 拳套 ===
function weapons:gloves/tick
function weapons:gloves/heavy_gloves/tick

# === 鐮刀 ===
function weapons:scythe/tick

# === 劍 ===
function weapons:sword/blood_sword/tick
#function weapons:sword/fat_sword/tick <- 這個也不再需要了

# === 三叉戟 ===

# === 鞭子 ===
function weapons:whip/tick

# === 錘子 ===
# 為了防止點水面錘子會消失的BUG
execute at @e[type=marker,tag=hammer] as @a[distance=..10] run function weapons:hammer/system/return_hammer

# === 雜項 ===
function weapons:misc/lily_pad/tick
function weapons:misc/honey_horn/tick