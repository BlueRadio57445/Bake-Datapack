滿滿的說明書啊

# 此文件已經過時

## 自動屬性與耐久文字系統說明

`{LoreUpdate:1b}`
加上此標籤的物品出現於玩家背包中時，將會自動更新其說明文字，並移除此標籤  
以下為自動更新的文字其相關條件  

### 屬性

原版道具若有預設的屬性且無任何額外的屬性修飾器時，將會附加上深青色的「基礎屬性」文字  
![基礎屬性](https://upload.cc/i1/2023/10/10/9QmFt1.png)  

若該道具存在額外的屬性修飾器，預設的屬性將會失效 (此為mc原版之設定)  
而若要自動顯示此道具的屬性修飾內容，其 `Name` 標籤必須為特定字串  

上述特定字串的種類如下列:  
* 基礎屬性
  * `attack_damage.default`
  * `attack_speed.default`
  * `armor.default`
  * `armor_toughness.default`
  * `knockback_resistance.default`
* 附加屬性 (`<slot>` 可為 `hand`, `mainhand`, `offhand`, `body` 這四種)
  * `max_health.<slot>`
  * `attack_damage.<slot>`
  * `attack_speed.<slot>`
  * `armor.<slot>`
  * `armor_toughness.<slot>`
  * `knockback_resistance.<slot>`
  * `movement_speed.<slot>`

![基礎與附加屬性](https://upload.cc/i1/2023/10/10/KrCyYz.png)  

### 耐久

`{durability:{max:<int>,current:<int>}}`  
若要自訂道具的耐久度，應以此格式設定 (此功能僅適用於原本就有耐久度的道具)  

無自訂耐久度的道具也會自動顯示其耐久度

![耐久度](https://upload.cc/i1/2023/10/10/6v5OIf.png)  
