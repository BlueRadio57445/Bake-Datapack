scoreboard players operation $system actionbar.player_mod = $gametime general.utils
scoreboard players operation $system actionbar.player_mod %= $5 general.const
execute as @a[predicate=actionbar:player_update] run function actionbar:update
schedule function actionbar:regular 8t
