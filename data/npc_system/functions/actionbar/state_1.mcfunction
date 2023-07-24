function general:player_data/select
data modify storage general:player_data Data[{selected:1b}].Actionbar.Center set value '[{"translate":"space.-58"},{"translate":"space.-1/2"},{"color":"aqua","text":"對話中，點擊NPC以繼續對話"},{"translate":"space.-58"},{"translate":"space.-1/2"}]'
function actionbar:update
