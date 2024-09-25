function general:player_data/select
data modify storage general:player_data Data[{selected:1b}].Actionbar.Center set value '[{"text":"\\uDAFF\\uDFCA"},{"color":"aqua","text":"請點擊右鍵來選擇一個選項"},{"text":"\\uDAFF\\uDFCA"}]'
data modify storage general:player_data Data[{selected:1b}].Actionbar.CenterMode set value "npc_system"
function actionbar:update
