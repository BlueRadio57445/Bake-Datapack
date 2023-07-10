# 恩批吸系統

## 目錄
* [命名空間](#命名空間)
* [基本檔案](#基本檔案)
  * [進度](#進度)
  * [函數](#函數)
* [互動設定](#互動設定)
  * [通常對話](#通常對話)
  * [通常選項](#通常選項)
  * [商店設定](#商店設定)
  * [其他設定](#其他設定)
* [任務流程](#任務流程)

## 命名空間

NPC系統使用了以下四個命名空間:
* `npc`
* `npc_system`
* `quest`
* `quest_system`

其中不帶有"system"單字的命名空間用於儲存對話腳本及各式設定 (也就是你應該要編輯和新增檔案的地方)。  
帶有"system"單字的則是地圖運作時會使用到的相關系統 (除非經過允許，禁止更動這裡的東西)。  
'npc' 的命名空間可以設定一個NPC的外觀、通常對話以及商人所販售的物品等等，並且扮演著能從個別的NPC來啟動其他功能的角色。  
'quest' 的命名空間則將觸發任務時的對話獨立了出來，並儲存著跟任務有關的對話中會執行的函數。  

## 基本檔案

在這個系統中，一個最簡單的NPC由至少6個檔案所組成。  
此6個檔案分別為2個進度與4個函數，並依照NPC所在的區域來分類。  
以下提供各檔案之模板，使用模板時請將`<region_id>`替換成地區代號、`<npc_id>`替換成NPC代號 (請全部使用英文小寫字母及英文底線)。    

### 進度

NPC的基本進度如下列所示:

* `data/npc/advancements/<region_id>/<npc_id>_start.json`
* `data/npc/advancements/<region_id>/<npc_id>_next.json`

其中"start"進度會偵測玩家開始與特定NPC互動，"next"進度則能偵測所有後續的互動。  

* "start"進度之模板:

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
  * "next"進度之模版:

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
設定類包含"summon"及"dialogue"函數，其中"summon"用於設定外觀及原地召喚該NPC，"dialogue"負責所有通常對話相關事務。  
執行類包含"start"及"next"函數，其中"start"用於回應"start"進度的呼叫以及開啟NPC對話，"next"則用於回應"next"進度及推進對話過程。  

* "dialogue"函數的寫法將在[互動設定](#互動設定)中詳細說明
* "summon"函數之模板 (附有逐行註解說明):

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
  data modify storage npc_system:common This set from storage npc:demo radio

  # 5. 執行召喚後處理之通用函式
  function npc_system:common/summon
  ```

* "start"函數之模板 (附有逐行註解說明):
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

* "next"函數之模板 (附有逐行註解說明):
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


