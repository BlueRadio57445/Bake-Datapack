$scoreboard players set $$(type) general.extra_lore.modifier_type 1
$data modify storage general:extra_lore Slot.text set from storage general:extra_lore modifier_texts[{name:"slot",type:"$(type)"}].text
function general:extra_lore/attributes/slot_append with storage general:extra_lore Slot
