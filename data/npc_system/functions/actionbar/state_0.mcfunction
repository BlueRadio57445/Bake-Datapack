function general:player_data/select
execute if data storage general:player_data Data[{selected:1b}].Actionbar{CenterMode:"npc_system"} run data remove storage general:player_data Data[{selected:1b}].Actionbar.Center
execute if data storage general:player_data Data[{selected:1b}].Actionbar{CenterMode:"npc_system"} run data remove storage general:player_data Data[{selected:1b}].Actionbar.CenterMode
function actionbar:update
