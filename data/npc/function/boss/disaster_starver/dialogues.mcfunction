data modify storage npc:boss disaster_starver set value {}

data modify storage npc:boss disaster_starver.Normal set value []
data modify storage npc:boss disaster_starver.Normal append value {Texts:['{"text":"準備好了嗎?"}'],Options:[{Option:'{"text":"準備好了，開始戰鬥"}',React:['{"text":"祝你好運！"}'],Extra:{EndCommand:"function npc:boss/disaster_starver/start_fight"}},{Option:'{"text":"查看Boss技能"}',React:['{"text":"以下是Boss的技能"}'],Extra:{EndCommand:"function npc:boss/disaster_starver/info"}}]}

data modify storage npc:boss disaster_starver.Exit set value {Texts:['{"text":"準備好之後再來找我喔!"}']}

data modify storage npc:boss disaster_starver.Idle set value []