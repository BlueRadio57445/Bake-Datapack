#新增一個述詞-不同的手持物品~
#記分板的虛擬實體要換喔
execute store result score whip.1 weapons.whip.1 on origin if entity @s[predicate=weapons:whip/select_whip1]
execute if score whip.1 weapons.whip.1 matches 1 run tag @s add weapons_whip_whip1
