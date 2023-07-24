function general:player_data/select
execute if data storage general:player_data Data[{selected:1b}].Actionbar{Center:'[{"translate":"space.-58"},{"translate":"space.-1/2"},{"color":"aqua","text":"對話中，點擊NPC以繼續對話"},{"translate":"space.-58"},{"translate":"space.-1/2"}]'} run data remove storage general:player_data Data[{selected:1b}].Actionbar.Center
execute if data storage general:player_data Data[{selected:1b}].Actionbar{Center:'[{"translate":"space.-54"},{"color":"aqua","text":"請點擊右鍵來選擇一個選項"},{"translate":"space.-54"}]'} run data remove storage general:player_data Data[{selected:1b}].Actionbar.Center
function actionbar:update
