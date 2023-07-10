# 恩批吸系統

## 目錄
- [恩批吸系統](#恩批吸系統)
  - [目錄](#目錄)
  - [命名空間](#命名空間)
  - [基本檔案](#基本檔案)
    - [進度](#進度)
    - [函數](#函數)
  - [互動設定](#互動設定)
    - [通常設定](#通常設定)
    - [商店設定](#商店設定)
  - [任務流程](#任務流程)
    - [回呼函數](#回呼函數)
    - [任務對話](#任務對話)
    - [任務提示](#任務提示)

## 命名空間

NPC系統使用了以下四個命名空間:
* `npc`
* `npc_system`
* `quest`
* `quest_system`

其中不帶有 "system" 單字的命名空間用於儲存對話腳本及各式設定 (也就是你應該要編輯和新增檔案的地方)。  
帶有 "system" 單字的則是地圖運作時會使用到的相關系統 (除非經過允許，禁止更動這裡的東西)。  
`npc` 的命名空間可以設定一個NPC的外觀、通常對話以及商人所販售的物品等等，並且扮演著能從個別的NPC來啟動其他功能的角色。  
`quest` 的命名空間則將觸發任務時的對話獨立了出來，並儲存著跟任務有關的對話中會執行的函數。  

## 基本檔案

在這個系統中，一個最簡單的NPC由至少6個檔案所組成。  
此6個檔案分別為2個進度與4個函數，並依照NPC所在的區域來分資料夾。  
以下提供各檔案之模板，使用模板時請將 `<region_id>` 替換成地區代號、`<npc_id>` 替換成NPC代號 (請全部使用英文小寫字母及英文底線)。    

### 進度

NPC的基本進度如下列所示:

* `data/npc/advancements/<region_id>/<npc_id>_start.json`
* `data/npc/advancements/<region_id>/<npc_id>_next.json`

其中 "start" 進度會偵測玩家開始與特定NPC互動，"next" 進度則能偵測所有後續的互動。  

* "start" 進度之模板:

  ```json
  {
    "rewards": {
      "function": "npc:<region_id>/<npc_id>/start"
    },
    "criteria": {
      "interacted": {
        "trigger": "minecraft:player_interacted_with_entity",
        "conditions": {
          "entity": [
            {
              "condition": "minecraft:entity_properties",
              "predicate": {
                "type": "minecraft:interaction",
                "nbt": "{Tags:[\"npc.<region_id>.<npc_id>\"]}"
              },
              "entity": "this"
            },
            {
              "condition": "minecraft:entity_scores",
              "scores": {
                "npc.occupied": 0
              },
              "entity": "this"
            }
          ],
          "player": [
            {
              "condition": "minecraft:entity_scores",
              "scores": {
                "npc.state": 0
              },
              "entity": "this"
            }
          ]
        }
      }
    }
  }
  ```
* "next" 進度之模版:

  ```json
  {
    "rewards": {
      "function": "npc:<region_id>/<npc_id>/next"
    },
    "criteria": {
      "interacted": {
        "trigger": "minecraft:player_interacted_with_entity",
        "conditions": {
          "entity": [
            {
              "condition": "minecraft:entity_properties",
              "predicate": {
                "type": "minecraft:interaction",
                "nbt": "{Tags:[\"npc.<region_id>.<npc_id>\"]}"
              },
              "entity": "this"
            },
            {
              "condition": "minecraft:entity_scores",
              "scores": {
                "npc.occupied": 1
              },
              "entity": "this"
            }
          ],
          "player": [
            {
              "condition": "minecraft:entity_scores",
              "scores": {
                "npc.state": 1
              },
              "entity": "this"
            }
          ]
        }
      }
    }
  }
  ```

### 函數

NPC的基本函數如下列所示:

* `data/npc/functions/<region_id>/<npc_id>/summon.mcfunction`
* `data/npc/functions/<region_id>/<npc_id>/dialogue.mcfunction`
* `data/npc/functions/<region_id>/<npc_id>/start.mcfunction`
* `data/npc/functions/<region_id>/<npc_id>/next.mcfunction`

此四個函數可分為「設定類」及「執行類」。  
設定類包含 "summon" 及 "dialogue" 函數，其中 "summon" 用於設定外觀及原地召喚該NPC，"dialogue" 負責所有通常對話相關事務。  
(設定類函數應由區域管理系統呼叫。亦可撰寫多個版本的設定類函數，使NPC能在遊戲不同階段產生變化。)  

執行類包含 "start" 及 "next" 函數，其中 "start" 用於回應 "start" 進度的呼叫以及開啟NPC對話，"next" 則用於回應 "next" 進度及推進對話過程。  

* "dialogue" 函數的寫法將在[互動設定](#互動設定)中詳細說明
* "summon" 函數之模板 (附有逐行註解說明):

  ```java
  # 0. NPC為唯一，因此召喚前應刪除擁有此tag之所有實體
  kill @e[tag=npc.<region_id>.<npc_id>]

  # 1. 召喚顯示本體，可為盔甲架或其他實體(如: 村民、貓等)
  #    NPC顯示名稱將取用CustomName之內容
  #    每次對話結束時NPC將轉回初始Rotation
  summon minecraft:armor_stand ~ ~ ~ {Tags:["npc.this","npc.tag","npc.figure","npc.<region_id>.<npc_id>"],Rotation:[90.0f,0.0f],CustomName:'{"text":"模板NPC"}',ShowArms:1b,NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"Steve"}}]}

  # 2. 召喚互動實體，可依據顯示本體的碰撞箱大小調整互動實體的寬、高與位置，使其能夠完全包覆顯示本體
  summon minecraft:interaction ~ ~-0.05 ~ {Tags:["npc.this","npc.tag","npc.<region_id>.<npc_id>"],width:0.6f,height:2.1f}

  # 3. 召喚替代名條，召喚高度同樣可依據本體之碰撞箱調整(建議高度: 本體碰撞箱高度 + 0.475)
  summon minecraft:text_display ~ ~2.475 ~ {Tags:["npc.this","npc.tag","npc.name","npc.<region_id>.<npc_id>"],billboard:"center",background:-1073741825,transformation:{translation:[0.0f,-0.255f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

  # 4. 將當前的對話設定載入到指定位置，方便後續的通用函式使用
  data modify storage npc_system:common This set from storage npc:<region_id> <npc_id>

  # 5. 執行召喚後處理之通用函式
  function npc_system:common/summon
  ```

* "start" 函數之模板 (附有逐行註解說明):
  ```java
  # 0. 消除觸發此函式的進度，使其能重複觸發
  advancement revoke @s only npc:<region_id>/<npc_id>_start

  # 1. 將所有屬於同一個NPC的實體標上this標籤
  tag @e[tag=npc.<region_id>.<npc_id>] add npc.this

  # 2. 將當前的對話設定載入到指定位置，方便後續的通用函式使用
  data modify storage npc_system:common This set from storage npc:<region_id> <npc_id>

  # 3. 若有符合特殊對話之條件(例如任務說明與交付等)，將於此處偵測並覆蓋接下來的對話，順序越前面優先度越高，若無則請無視此段
  #execute if score $<region>.<quest_id> quest.state matches <number> unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:dialogue <quest_id>.<stage>
  #...

  # 4. 執行開始對話之通用函式
  function npc_system:common/start

  # 5. 將通用函式中所更新的資料儲存回對話設定中
  data modify storage npc:<region_id> <npc_id>.Normal set from storage npc_system:common This.Normal

  # 6. 移除所有this標籤
  tag @e[tag=npc.this] remove npc.this 
  ```

* "next" 函數之模板 (附有逐行註解說明):
  ```java
  # 0. 消除觸發此函式的進度，使其能重複觸發
  advancement revoke @s only npc:<region_id>/<npc_id>_next

  # 1. 將所有屬於同一個NPC的實體標上this標籤
  tag @e[tag=npc.<region_id>.<npc_id>] add npc.this

  # 2. 執行對話過程之通用函式
  function npc_system:common/next

  # 3. 此段為商人NPC運行時需要觸發的指令，對於非商人NPC並無任何影響
  execute if score @s npc.state matches 3 run data modify storage npc:<region_id> <npc_id>.TraderNormal set from entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.TraderNormal
  execute if score @s npc.trader_interpret matches 1 run data modify storage npc:<region_id> <npc_id>.Buy set from entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Buy
  execute if score @s npc.trader_interpret matches 1 run data modify storage npc:<region_id> <npc_id>.Sell set from entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Sell
  scoreboard players reset @s npc.trader_interpret

  # 4. 移除所有this標籤
  tag @e[tag=npc.this] remove npc.this 
  ```
## 互動設定

所有跟NPC互動時的對話、選項等，可在 "dialogue" 函數中設定，設定方法為對該NPC所擁有的「指令空間 (command storage)」進行編輯。  
(因此請先確保自己能夠操作 `/data modify` 指令的相關基礎功能再來喔。)  
每個NPC都有其獨立的 `storage`，位置為 `npc:<region_id>` 中的 `<npc_id>` 項，這些位置底下的元素會影響該NPC的行為，以下將列出有效的鍵值。  

### 通常設定

* Normal (list of components) - 可儲存多個通常對話，預設按照順序觸發
  * Texts (list of json strings) - 必填，包含多個 "json string" 的列表，該對話之多行內容，按順序觸發
  * Once (boolean) - 選填，若設為 `1b`，此對話觸發後將從 `storage` 中刪除，無法再次顯示
  * Options (list of components) - 選填，於通常對話或選項對話結束後將會進入選項階段，最多四個選項 (會多顯示一個「離開」選項)
    * Option (json string) - 顯示於選項之文字
    * React (list of json strings) - 包含多個 "json string" 的列表，該選項對話之多行內容，按順序觸發
    * Condition (component) - 選項條件，若玩家不符合條件將無法觸發該選項
      * Item (data format of an item) 條件物品 (目前只有這項，其他的有需要再說)
    * End (boolean) - 若設為 `1b`，此選項對話結束後將不會回到選項
    * Extra (component) - 額外區域，目前用於儲存選項的回呼函數設定，多用於任務系統
      * Start_Command (string) - 合法指令的字串，將於選項被選中時額外執行此指令，執行者為對話中的玩家
      * End_Command (string) - 合法指令的字串，將於選項對話正常結束時額外執行此指令，執行者為對話中的玩家
      * Leave_Command (string) - 合法指令的字串，將於玩家離開對話距離或登出導致對話結束時額外執行此指令，執行者為對話中的玩家，若玩家登出則會由伺服器執行
  * Quest (boolean) - 選填，任務選項模式，於Options存在時才有效果。若設為 `1b`，進入選項時將不會出現「離開」選項，且選項對話結束時亦不會再次進入選項
  * Extra (component) - 額外區域，目前用於儲存通常對話的回呼函數設定，多用於任務系統
    * Start_Command (string) - 合法指令的字串，將於對話開始時額外執行此指令，執行者為對話中的玩家
    * End_Command (string) - 合法指令的字串，將於對話正常結束時額外執行此指令，執行者為對話中的玩家
    * Leave_Command (string) - 合法指令的字串，將於玩家離開對話距離或登出導致對話結束時額外執行此指令，執行者為對話中的玩家，若玩家登出則會由伺服器執行
* NormalRandom (boolean) - 選填，若設為 `1b`，多個通常對話將以隨機序列被觸發
* Exit (component) - 於Options存在或Trader為`1b`時才有效果，將於點選「離開」選項後觸發此處的對話
  * Texts (list of json strings) - 包含多個 "json string" 的列表，該對話之多行內容，按順序觸發
* Idle (list of components) - 選填，NPC閒置 (不在與玩家互動) 時，若此列表有內容，將會以設定的時長與間隔顯示文字於NPC頭上
  * Text (json string) - 顯示的文字
  * Duration (component or interger) - 文字顯示的秒數，可為固定值 (整數) 或浮動值 (見下列標籤)
    * max (interger) - 隨機數 (uniform) 的上界，應大於min
    * min (interger) - 隨機數 (uniform) 的下界，不得小於0
  * Rest (component or interger) - 距離下次文字顯示的秒數，格式同上

### 商店設定

* Trader (boolean) - 若設為 `1b`，此NPC將被轉換成商店，並在通常對話結束後進入交易選項
* TraderNormal (list of components) - 商店必填，可儲存多個商店對話，於交易選項中選擇「交談」後顯示，預設按照順序觸發，單個對話結束後將回到交易選項
  * 與Normal之內容相同
* TraderNormalRandom (boolean) - 選填，若設為 `1b`，多個商店對話將以隨機序列被觸發
* Buy (list of components) - 「購入」內的交易選項，基本與村民之交易選項相同
  * buy (component) - 玩家應交付的物品，可為 `{id, tag, Count}` 格式或 `{Name, Count}` 格式，其中 `Name` 為字串，應填入戰利品表路徑 (如同在 `/loot` 指令中打的那樣)
  * buyB (component) - 玩家應交付的物品，格式同上
  * sell (component) - 玩家將獲得的物品，格式同上
  * maxUses (interger) - 玩家可交易的次數，設定成2147483647就好
* Sell (list of components) - 「售出」內的交易選項，基本與村民之交易選項相同
  * 格式同上

## 任務流程

任務同樣以區域來分資料夾，如果要設計跨區域的任務，以任務開始的區域為準。  
每個任務要分配一個代號(`quest_id`)，例如: `mysterious_stone`。  
同一個任務相關的函數應儲存在此路徑: `data/quest/functions/<region_id>/<quest_id>/`。  
且應將記分板 `quest.state` 在假玩家 `$<region_id>.<quest_id>` 底下的分數作為任務進度之紀錄。  

### 回呼函數

於NPC對話中，更新任務記分板、給予任務道具、給予任務獎勵及顯示任務提示之功能 (給予有顯示的進度) 皆由回呼函數所達成。  
回呼函數觸發的時機取決於[所設定的方式](#通常設定)。
若任務相關之回呼函數有對 `quest.state` 之假玩家分數作改動，其應包含下列兩行指令，以便系統於多人模式時同步任務提示。
```java
scoreboard players add $system quest.version 1
scoreboard players operation @a quest.version = $system quest.version
```

### 任務對話

一個任務的所有相關對話應於 `data/quest/functions/<region_id>/<quest_id>/dialogues.mcfunction` 中設定。  
儲存一段對話所建議的 `storage` 位置為 `quest:demo` 中的 `<quest_id>.<state>` 底下，並且使用NPC中單項Normal的格式 ("state" 只要有辦法辨識即可)。  
於此設定的對話可在各NPC的"start"函數中以任務進度分數為條件觸發，[寫法見此](#函數)。  
<u>**應註解**</u>每段對話觸發時的NPC及分數條件，以下為其中一個範例:  

```java
# 此為 data/quest/functions/demo/mysterious_stone/dialogues.mcfunction

data remove storage quest:demo mysterious_stone

# 階段為1時，由 "demo.radio" 觸發，選擇選項1後將階段設為2
data modify storage quest:demo mysterious_stone.Start set value {Texts:[...],Options:[{Option:'{"text":"接受任務"}',React:[...],Extra:{End_Command:"function quest:demo/mysterious_stone/start"}},{Option:'{"text":"拒絕任務"}',React:[...]}],Quest:1b}

# 階段為2時，由 "demo.radio" 觸發
data modify storage quest:demo mysterious_stone.Start_Remind set value {Texts:[...]}

# 階段為2時，由 "demo.endsky" 觸發，結束後將階段設為3，並給予道具
data modify storage quest:demo mysterious_stone.Ask set value {Texts:[...],Extra:{End_Command:"function quest:demo/mysterious_stone/give"}}

# 階段為3時，由 "demo.endsky" 觸發
data modify storage quest:demo mysterious_stone.Ask_Remind set value {Texts:[...]}

# 階段為3且玩家持有指定道具時，由 "demo.radio" 觸發`，玩家選擇是否提交任務道具，若選是，收走指定道具，將階段設為4，結束時給予獎勵道具將階段設為5
data modify storage quest:demo mysterious_stone.Turn_In set value {Texts:[...],Options:[{Option:'{"text":"交出石頭"}',React:[...],Condition:{Item:{id:"minecraft:stone",tag:{mysterious_stone:1b},Count:1b}},Extra:{Start_Command:"function quest:demo/mysterious_stone/take",End_Command:"function quest:demo/mysterious_stone/finish"}},{Option:'{"text":"暫時不交出石頭"}',React:[...]}],Quest:1b}

# 階段為4時，由 "demo.radio" 觸發，補發獎勵道具，並將階段設為5
data modify storage quest:demo mysterious_stone.Reward set value {Texts:[...],Extra:{Start_Command:"function quest:demo/mysterious_stone/finish"}}
```

### 任務提示

任務進度之提示以「進度」功能達成，預計同一個區域的任務會共用同一個根進度。  
任務提示的顯示格式待定。  
