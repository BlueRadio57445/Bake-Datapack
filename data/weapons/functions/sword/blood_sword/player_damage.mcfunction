scoreboard players operation @s weapons.use_health = $self weapons.use_health
data modify storage weapons:sword blood_sword.Damage set from entity @s SelectedItem.tag.AttributeModifiers[{Name:"attack_damage.mainhand"}].Amount

execute if score $self weapons.use_health matches 100 store success score $temp weapons run data modify storage weapons:sword blood_sword.Damage set value 0.0d
execute if score $self weapons.use_health matches 80..99 store success score $temp weapons run data modify storage weapons:sword blood_sword.Damage set value 1.5d
execute if score $self weapons.use_health matches 50..79 store success score $temp weapons run data modify storage weapons:sword blood_sword.Damage set value 2.0d
execute if score $self weapons.use_health matches 30..49 store success score $temp weapons run data modify storage weapons:sword blood_sword.Damage set value 3.0d
execute if score $self weapons.use_health matches 1..29 store success score $temp weapons run data modify storage weapons:sword blood_sword.Damage set value 4.0d

execute if score $temp weapons matches 1 run item modify entity @s weapon.mainhand weapons:sword/blood_sword
