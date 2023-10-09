tellraw @a[distance=..10] {"text": "已設置紀錄點","color": "green"}
playsound entity.player.levelup master @a[distance=..10] ~ ~ ~ 1 0.5
execute as @a[distance=..10] run spawnpoint @s ~ ~2 ~