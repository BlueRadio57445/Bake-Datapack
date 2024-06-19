#declare score_holder $gametime
#declare score_holder $playerOnline

execute store result score $gametime general.utils run time query gametime
execute store result score $playerOnline general.utils if entity @a
execute as @a store result score @s general.player.selected_slot run data get entity @s SelectedItemSlot

execute as @a[predicate=general:events/health_changed] run function general:events/health_changed
execute as @a[predicate=general:events/hunger_changed] run function general:events/hunger_changed
execute as @a[predicate=general:events/selected_item_changed] run function general:events/selected_item_changed
execute as @a[predicate=general:events/selected_slot_changed] run function general:events/selected_slot_changed

execute as @a[predicate=general:events/used_sticks] run function general:events/on_sticks_click

# 物件隨時間扣分
scoreboard players remove @e[scores={general.object.duration=1..}] general.object.duration 1