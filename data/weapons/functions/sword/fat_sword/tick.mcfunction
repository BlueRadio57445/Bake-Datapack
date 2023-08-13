execute as @a[predicate=weapons:sword/fat_sword/hold] if score @s general.player.food matches 20.. run item modify entity @s weapon.mainhand weapons:sword/fat_sword/strong
execute as @a[predicate=weapons:sword/fat_sword/hold] unless score @s general.player.food matches 20.. run item modify entity @s weapon.mainhand weapons:sword/fat_sword/weak
# 物品修飾器那邊還有可以優化的空間