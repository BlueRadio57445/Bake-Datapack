function general:player_data/select
data modify storage general:player_data Data[{selected:1b}].Actionbar.Center set value '[{"text":"\\uDAFF\\uDFC6\\uD8FD\\uDEA0"},{"color":"aqua","text":"對話中，點擊NPC以繼續對話"},{"text":"\\uDAFF\\uDFC6\\uD8FD\\uDEA0"}]'
data modify storage general:player_data Data[{selected:1b}].Actionbar.CenterMode set value "npc_system"
function actionbar:update
