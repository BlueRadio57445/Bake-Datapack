scoreboard objectives add general.version dummy
scoreboard objectives add general.id dummy
scoreboard objectives add general.utils dummy
scoreboard objectives add general.const dummy
scoreboard objectives add general.logged_out minecraft.custom:minecraft.leave_game

scoreboard objectives add general.player.health health
scoreboard objectives add general.player.armor armor
scoreboard objectives add general.player.food food
scoreboard objectives add general.player.air air
scoreboard objectives add general.player.level level
scoreboard objectives add general.player.xp xp
scoreboard objectives add general.player.selected_slot dummy

scoreboard objectives add general.used_carrot_stick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add general.used_fungus_stick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add general.shot_bow minecraft.used:minecraft.bow
scoreboard objectives add general.shot_crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add general.shot_egg minecraft.used:minecraft.egg
scoreboard objectives add general.shot_ender_pearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add general.shot_snowball minecraft.used:minecraft.snowball
scoreboard objectives add general.shot_trident minecraft.used:minecraft.trident

scoreboard objectives add general.utils.health dummy
scoreboard objectives add general.utils.food dummy
scoreboard objectives add general.utils.selected_slot dummy

scoreboard objectives add general.extra_lore dummy
scoreboard objectives add general.extra_lore.modifier_type dummy

scoreboard objectives add general.object.duration dummy
scoreboard objectives add general.object.init_timestamp dummy

scoreboard players set $-1 general.const -1
scoreboard players set $0 general.const 0
scoreboard players set $1 general.const 1
scoreboard players set $2 general.const 2
scoreboard players set $5 general.const 5
scoreboard players set $10 general.const 10
scoreboard players set $16 general.const 16
scoreboard players set $20 general.const 20
scoreboard players set $60 general.const 60
scoreboard players set $100 general.const 100

# 若此記分板為空值，將其設為0
execute unless score $playerCount general.id = $playerCount general.id run scoreboard players set $playerCount general.id 0

# 設定區
#declare storage general:utils
data modify storage general:utils Execute set value [""]
data modify storage general:utils Cooldown.Item set value {mode:"item",length:0,target_time:0,command:"function general:utils/cooldown_item_end"}
data modify storage general:utils Cooldown.Empty set value {mode:"empty",length:0}

# 強制載入 (-1, -1) ~ (0, 0) 共四個區塊，要注意別把需要使用的方塊或實體放到 (-16, -16) ~ (15, 15) 以外的區域喔，因為很可能會偵測不到
forceload add -1 -1 0 0

# 三角函數專用Marker，用完記得tp回0.0 0.0 0.0 (UUID: 00000000-0000-0000-0000-000000000000)
kill @e[type=marker,tag=tri]
execute unless entity @e[type=marker,tag=tri] run summon marker 0.0 0.0 0.0 {Tags:["tri"],UUID:[I;0,0,0,0]}

# 留給以後用
kill 00000000-0000-0000-0000-000000000001

# 放一個界伏盒，用於任何需要替換玩家物品欄內容的場合
setblock 0 16 0 yellow_shulker_box

# Lore相關功能初始化用資料
function general:extra_lore/load

# 開發者專用功能: 若於此資料夾新增了需要進行初始化的功能，此分數將被技術總監加1
scoreboard players set $datapack general.version 3
execute unless score $world general.version = $datapack general.version run function general:player_reset
