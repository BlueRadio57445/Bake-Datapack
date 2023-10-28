#declare score_holder $gametime
#declare score_holder $playerOnline

execute store result score $gametime general.utils run time query gametime
execute store result score $playerOnline general.utils if entity @a
execute as @a store result score @s general.player.selected_slot run data get entity @s SelectedItemSlot

execute as @a[predicate=general:utils/health_changed] run function general:utils/health_changed
execute as @a[predicate=general:utils/hunger_changed] run function general:utils/hunger_changed
execute as @a[predicate=general:utils/selected_item_changed] run function general:utils/selected_item_changed
execute as @a[predicate=general:utils/selected_slot_changed] run function general:utils/selected_slot_changed

execute as @a[predicate=general:utils/used_sticks] run function general:utils/on_sticks_click

# 物件隨時間扣分
scoreboard players remove @e[type=#object,scores={general.object.duration=1..}] general.object.duration 1