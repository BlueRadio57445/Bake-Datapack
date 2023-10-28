scoreboard players operation $gametime actionbar.cooldown.offhand_update_time = $gametime general.utils

execute as @a[predicate=actionbar:effect/time_matched] run function actionbar:effect/time_update
execute as @a[advancements={actionbar:effects_changed=true}] run function actionbar:effects_changed
execute as @a[scores={actionbar.custom_effect=1}] run function actionbar:custom_effect/update
execute as @a[predicate=actionbar:cooldown/hotbar_time_matched] run function actionbar:cooldown/hotbar/mask_update
execute as @a[predicate=actionbar:cooldown/offhand_time_matched] run function actionbar:cooldown/offhand/mask_update
execute as @a[scores={actionbar.update=1}] run function actionbar:update
scoreboard players remove @a[scores={actionbar.update=2..}] actionbar.update 1
