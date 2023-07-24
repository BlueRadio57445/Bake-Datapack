function general:player_data/select
data modify storage general:player_data Data[{selected:1b}].Actionbar.Center set value '[{"translate":"space.-54"},{"color":"aqua","text":"請點擊右鍵來選擇一個選項"},{"translate":"space.-54"}]'
function actionbar:update
