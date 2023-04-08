# ========================================================
# 注意: 使用此功能的函式皆應以欲偵測其背包內容物之玩家為執行者
# ========================================================

# 使用下列指令對 storage 進行編輯，指定欲偵測的物品
data modify storage quest_system:item_check Item set value {id:"minecraft:stone",tag:{mysterious_stone:1b},exclude_tags:[{not_mysterious_stone:1b}],Count:56b}
# 說明:
# - id 為必須，請以 "minecraft:..." 的格式輸入
# - tag 為選填，其內容可少於實際物品但不可多餘
# - exclude_tags 為選填，若於玩家背包內搜尋到的是符合此列表內任一標籤內容的物品，將不列入計算
# - Count 若無設定，則默認為1
# - Take 若設定為1，若物品足夠則收走，物品不足時不執行
# - 目前並無支援 item tag

tellraw @s {"color":"aqua","text":"[任務系統] 檢查中，目標物品之設定如下:"}
tellraw @s {"color":"yellow","nbt":"Item","storage":"quest_system:item_check"}

# 指定完畢，執行下列函式開始偵測
function quest_system:item_check
# 函式執行之結果將記錄在假玩家 $output 的 quest.item_count 記分板裡

tellraw @s {"color":"aqua","text":"[任務系統] 檢查完畢，結果如下:"}
execute if score $output quest.item_check matches 0 run tellraw @s {"color":"red","text":"[任務系統] 指定物品數量不足，目標為 ","extra":[{"score":{"name":"$target","objective":"quest.item_check"}},{"text":" 個，但只在您身上搜尋到 "},{"score":{"name":"$count","objective":"quest.item_check"}},{"text":" 個"}]}
execute if score $output quest.item_check matches 0 run tellraw @s {"color":"gray","text":"[任務系統] 若要獲得指定之偵測物品，請","extra":[{"color":"white","underlined":true,"text":"點此","clickEvent":{"action":"run_command","value":"/loot give @s loot quest:mysterious_stone_stack"}}]}
# 這裡順便展示使用 loot table 進行道具設計的方式，遊戲裡應該不會讓玩家使用聊天室的點擊事件來執行 /loot 指令，因為這需要權限
execute if score $output quest.item_check matches 1 run tellraw @s {"color":"aqua","text":"[任務系統] 指定物品數量足夠，目標為 ","extra":[{"score":{"name":"$target","objective":"quest.item_check"}},{"text":" 個，而您身上至少有 "},{"score":{"name":"$count","objective":"quest.item_check"}},{"text":" 個"}]}
