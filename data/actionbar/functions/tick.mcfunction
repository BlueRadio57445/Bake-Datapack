execute as @a[predicate=actionbar:effect/time_matched] run function actionbar:effect/time_update
execute as @a[advancements={actionbar:effects_changed=true}] run function actionbar:effects_changed
execute as @a[scores={actionbar.custom_effect=1}] run function actionbar:custom_effect/update
execute as @a[scores={actionbar.update=1}] run function actionbar:update
scoreboard players remove @a[scores={actionbar.update=2..}] actionbar.update 1
