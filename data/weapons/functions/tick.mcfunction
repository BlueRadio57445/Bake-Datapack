# === 斧頭 ===
function weapons:axe/hunangry

# === 弓 ===
function weapons:bow/tick
function weapons:bow/sacred_bow/tick

# === 弩 ===

# === 拳套 ===
function weapons:gloves/tick
function weapons:gloves/heavy_gloves/tick

# === 鐮刀 ===
function weapons:scythe/tick

# === 劍 ===
function weapons:sword/blood_sword/tick
function weapons:sword/fat_sword/tick

# === 三叉戟 ===

# === 鞭子 ===
execute as @e[type=minecraft:fishing_bobber] run function weapons:whip/select_whip
function weapons:whip/whip/damage