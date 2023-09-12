scoreboard objectives add items.state dummy
scoreboard objectives add items.check_time dummy

scoreboard objectives add items.used.warped_fungus_on_a_stick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add items.used.egg minecraft.used:minecraft.egg
scoreboard objectives add items.used.snowball minecraft.used:minecraft.snowball
scoreboard objectives add items.used.lingering_potion minecraft.used:minecraft.lingering_potion

scoreboard objectives add items.magnet.pos dummy
scoreboard objectives add items.magnet.dis dummy
scoreboard objectives add items.magnet.mot dummy

scoreboard objectives add items.whetstone dummy
scoreboard objectives add items.whetstone.using dummy

scoreboard objectives add items.vitality_apple dummy "吃過幾顆活力蘋果"
scoreboard objectives add items.vitality_apple.death deathCount "死亡次數"
function items:food/vitality_apple/schedule

function items:gadget/whetstone/load
