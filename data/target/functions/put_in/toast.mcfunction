advancement revoke @s only target:toast
advancement grant @a only target:display/toast

title @a title {"text": "目標完成"}
title @a subtitle {"text": "白吐司"}

scoreboard players set $toast target 1

scoreboard players set $hunger_cave region 4
function region:hunger_cave/detect_health