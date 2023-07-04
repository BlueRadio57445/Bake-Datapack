# 進度觸發，執行者是玩家
advancement revoke @s only weapons:scythe/hit_box
damage @e[type=#mobs,distance=0.1..,sort=nearest,limit=1,nbt=!{HurtTime:0s}] 1 weapons:scythe by @s
playsound block.lantern.fall master @a[distance=..10] ~ ~ ~ 0.5 2