# 雖然我還是很討厭這個Boss說明
# 我還是希望玩家靠自己的力量觀察Boss的招式
# 但我還是加了這個說明
execute at @s run tellraw @a[distance=..20] [{"text":"\n\n§7§o §7§l災厄餓死鬼 §f\n自從米木各離開以後，食物短缺造就了許多餓死鬼，其中最強的餓死鬼，人稱災厄。\n\n§7§l 技能§f：\n"},{"text":"§b  ⊙ §a閃現\n","hoverEvent":{"action":"show_text","contents":[{"text":"§fboss閃現到場地隨機位置"}]}},{"text":"§b  ⊙ §a嘔吐物\n","hoverEvent":{"action":"show_text","contents":[{"text":"§fboss在原地留下§a嘔吐物§f。\n嘔吐物會逐漸擴大，踩到的玩家會造成 §c中毒I§f、§c飢餓I§f、§c噁心I§f效果。"}]}},{"text":"§b  ⊙ §a飢渴斬擊\n","hoverEvent":{"action":"show_text","contents":[{"text":"§fboss站在原地發射六道凌厲的§c斬擊"}]}},{"text":"§b  ⊙ §a瘋跳\n","hoverEvent":{"action":"show_text","contents":[{"text":"§fboss向後跳一步，隨後向前跳發動§c震地攻擊"}]}},{"text":"§b  ⊙ §a餓鬼召喚\n","hoverEvent":{"action":"show_text","contents":[{"text":"§fboss召喚兩個§7餓鬼§f在場上"}]}}]
execute at @s run playsound item.book.page_turn block @p[distance=..3] ~ ~ ~ 100 1