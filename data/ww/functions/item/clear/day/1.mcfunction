# 石の斧
execute if entity @s[nbt={Inventory:[{id:"minecraft:stone_axe"}]}] run function ww:item/clear/item/wolf_axe/ with storage ww:settings shop

# 占い師の心
execute if entity @s[nbt={Inventory:[{id:"minecraft:heart_of_the_sea"}]}] run function ww:item/clear/item/divination/ with storage ww:settings shop

# 騎士の祈り
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand"}]}] run function ww:item/clear/item/knight/ with storage ww:settings shop

# 共犯者の目
execute if entity @s[nbt={Inventory:[{id:"minecraft:end_crystal"}]}] run function ww:item/clear/item/accomplice_eye/ with storage ww:settings shop

# プロビデンスの眼光
execute if entity @s[nbt={SelectedItem:{id:"minecraft:sunflower"}},scores={sneak=1..}] run function ww:item/clear/item/providence/ with storage ww:settings shop

# 霊媒師の遺灰
execute if entity @s[nbt={Inventory:[{id:"minecraft:gunpowder"}]}] run function ww:item/clear/item/medium/