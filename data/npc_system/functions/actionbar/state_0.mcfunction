function general:player_data/select
execute if data storage general:player_data Data[{selected:1b}].Actionbar{Center:'[{"text":"\\uDAFF\\uDFC6\\uD8FD\\uDEA0"},{"color":"aqua","text":"對話中，點擊NPC以繼續對話"},{"text":"\\uDAFF\\uDFC6\\uD8FD\\uDEA0"}]'} run data remove storage general:player_data Data[{selected:1b}].Actionbar.Center
execute if data storage general:player_data Data[{selected:1b}].Actionbar{Center:'[{"text":"\\uDAFF\\uDFCA"},{"color":"aqua","text":"請點擊右鍵來選擇一個選項"},{"text":"\\uDAFF\\uDFCA"}]'} run data remove storage general:player_data Data[{selected:1b}].Actionbar.Center
function actionbar:update
