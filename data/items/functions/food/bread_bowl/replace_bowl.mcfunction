# schedule 觸發
loot replace entity @a[tag=items.eat_bread_bowl,nbt=!{SelectedItem:{id:"minecraft:bowl"}},nbt={Inventory:[{Slot:-106b,id:"minecraft:bowl"}]}] weapon.offhand loot items:food/bread_bowl
loot replace entity @a[tag=items.eat_bread_bowl,nbt={SelectedItem:{id:"minecraft:bowl"}}] weapon.mainhand loot items:food/bread_bowl
tag @a[tag=items.eat_bread_bowl] remove items.eat_bread_bowl