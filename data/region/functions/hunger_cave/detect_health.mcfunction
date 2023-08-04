# schedule遞迴
# 如果玩家吃滿三顆活力蘋果，就讓血量正常化
# 把白吐司插進去之後觸發

execute if entity @a[tag=region.hunger_cave.defeat] if score $amount items.vitality_apple matches 9.. run function region:hunger_cave/change_health

execute if entity @a[tag=region.hunger_cave.defeat] run schedule function region:hunger_cave/detect_health 1t