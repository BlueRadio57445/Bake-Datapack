# Bake-Datapack

這裡是開發中的《麵包勇者》資料包

## 開發守則

若為開發人員，請遵守以下開發規則:

* 撰寫每個函數時請一定要考量效能問題，若不會效能優先的寫法請先讀過這兩篇文章:
  * https://forum.gamer.com.tw/C.php?bsn=18673&snA=194290
  * https://forum.gamer.com.tw/C.php?bsn=18673&snA=194512
  * 另外，marker 實體已經取代藥水雲在效能最佳化上的大部分功能了
  * tick函數內請盡量避免使用 `@e[nbt={}]` 這種目標選擇器，相關偵測應在 _以記分板條件啟動的函數_ 中執行 
  
* 命名空間: 用於區分大系統，若想新增命名空間，請向技術總監詢問註冊

* UUID: 用於特定常駐實體或是物品屬性修飾器，每個命名空間初始分配256個數值
  * 規則:
    > `00000000-0000-0000-0000-00000000xx00 ~ 00000000-0000-0000-0000-00000000xxff` 將分配給 `xx` 號命名空間使用

    > 也就是 `[I;0,0,0,256*xx+0] ~ [I;0,0,0,256*xx+255]`

* 記分板: 請盡量將記分板項目設定為 `<命名空間>.<子資料夾名稱>.<項目>`

  * 例: 紀錄拉弓時間的記分板項目應設定為 `weapons.bow.draw`
  * 顯示名稱的部分隨意
  * 虛擬玩家ID參考: `$system` (以`$`開頭方便辨識)
 
* 標籤: 也就是 `/tag` 指令和實體的 `{Tags:["..."]}`，本人是習慣使用跟記分板相同的命名邏輯，也推薦這麼做，不過要是以經寫下去了不想改的話想辦法別跟其他人撞到就好

* 指令容器: `/data modify storage` 的那個，本人習慣使用 `<命名空間>:<功能>` 來命名，不過沒有想要特別規定

* 自訂物品NBT之格式: 這部分要衝突到的機率我想是不高，真的發生問題了再說吧(怕...)

## 命名空間註冊表
|ID |namespace          |
|---|-------------------|
|0. |general            |
|1. |knowledge          |
|2. |sanctuary_ench     |
|3. |weapons            |
|4. |items              |
|5. |npc/npc_system     |
|6. |quest/quest_system |
|7. |effects            |
|8. |universe           |
|9. |damage             |
|10.|enemy              |
|11.|boss               |
|12.|actionbar          |
|13.|region             |
|14.|target             |
|15.|vehicles           |

## general 命名空間下的實用功能

### 強制載入區塊: 主世界 (-1, -1) ~ (0, 0)
* 主世界座標 0 16 0: 黃色界伏盒，用於玩家物品轉移之中介。
* 主世界座標 0 0 0: 三角函數專用marker (UUID: 00000000-0000-0000-0000-000000000000)

### general:player_data/
* command storage
  * `general:player_data`
    * `Data` (list): 儲存所有玩家的額外資料，其序數對應到玩家的 `general.id` 記分板(玩家序號)，會在有新玩家登入時自動新增一項。
      * `Inventory` (component): 玩家的背包內容，每次玩家背包更新後會在#tick函數階段的最後自動同步。意即若玩家的背包有變動，在進度及#tick函數的階段中偵測此項將會是變動前的狀態。
* functions
  * `general:player_data/get`: 帶macro的函數，用途為將執行者的資料庫中的指定路徑內容複製到指定的外部位置。引數為 `path` 及 `target`。
    * `path`: 以 `Data` 中的一項為根目錄，指定此根目錄下的路徑。(若輸入 `path:"temp"`，代表要複製 `Data[$(玩家序號)].temp` 的內容)
    * `target`: 要複製到的目標路徑，由三個部分組成 (type, source, path)，以空格隔開。 (例: `storage general:temp GotData`, `entity @e[limit=1,type=marker,tag=temp] data.GotData`)
    * 實例: `function general:player_data/get {path:"temp",target:"storage general:temp GotData"}`
  * `general:player_data/store`: 帶macro的函數，用途為將指定的外部位置的內容儲存到執行者的資料庫中的指定路徑。引數為 `path` 及 `target`。
    * `path`: 以 `Data` 中的一項為根目錄，指定此根目錄下的路徑。(若輸入 `path:"temp"`，代表要儲存到 `Data[$(玩家序號)].temp`)
    * `target`: 欲儲存資料的目標路徑，由三個部分組成 (type, source, path)，以空格隔開。(例: `storage general:temp StoreData`, `entity @e[limit=1,type=marker,tag=temp] data.StoreData`)
    * 實例: `function general:player_data/store {path:"temp",target:"storage general:temp StoreData"}`
  * `general:player_data/remove`: 帶macro的函數，用途為將執行者的資料庫中的指定路徑移除。引數為 `path`。
    * `path`: 以 `Data` 中的一項為根目錄，指定此根目錄下的路徑。(若輸入 `path:"temp"`，代表要移除 `Data[$(玩家序號)].temp`)
    * 實例: `function general:player_data/remove {path:"temp"}`
  * `general:player_data/select`: 普通函數，用途為將執行者的資料庫加上一個標籤 `selected:1b`，使外部函數能夠用 `storage general:player_data Data[{selected:1b}]` 指定執行者的資料庫內容。(每次呼叫時會先自動清除所有 `selected:1b` 標籤，此標籤的存在應為唯一。)

### general:utils/
* scoreboard
  * `$gametime general.utils`: 當前遊戲刻
  * `$playerOnline general.utils`: 當前線上人數
* functions
  * `general:utils/get_holding`: 執行後取得執行玩家的手持物品狀態，輸出位置為 `storage general:utils output`。(若該tick有背包內容變動，則取得的是變動前的狀態。)
  * `general:utils/on_sticks_click`: 玩家手持胡蘿蔔/扭曲蕈菇右鍵時觸發，自動執行該物品 `on_click` 標籤中儲存的指令。
  * `general:utils/health_changed`: 於玩家血量數值變動時觸發，可在此函數內新增任何其他函數的執行條件。
  * `general:utils/hunger_changed`: 於玩家飢餓度數值變動時觸發，可在此函數內新增任何其他函數的執行條件。
  * `general:utils/selected_slot_changed`: 於玩家快捷欄選擇欄位改變時觸發，可在此函數內新增任何其他函數的執行條件。

### general:extra_lore
[點此跳轉](data/general/functions/extra_lore/README.md)

## NPC 系統使用說明
[點此跳轉](data/npc/README.md)

此頁目前由技術總監: [__末天__](https://github.com/muotian) 負責編輯
