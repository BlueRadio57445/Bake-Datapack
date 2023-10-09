$data modify storage items:whetstone Lore.value set value $(text)
execute if data storage items:whetstone Lore.value{text:" 󐀁☬󐀁 傷害加成§f +"} if data storage items:whetstone Lore.value.extra[{text:"次攻擊後消失)"}] run scoreboard players set $temp items.whetstone 1
execute if data storage items:whetstone Lore.value{text:"臨時屬性:"} run scoreboard players set $temp items.whetstone 1
