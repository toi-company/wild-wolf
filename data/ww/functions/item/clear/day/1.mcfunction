# 石の斧
$execute if entity @s[nbt={Inventory:[{id:"minecraft:stone_axe"}]}] unless entity @s[tag=wolf_alive] run give @s emerald $(wolf_axe_price)
execute if entity @s[nbt={Inventory:[{id:"minecraft:stone_axe"}]}] unless entity @s[tag=wolf_alive] run clear @s stone_axe 1

# 占い師の心
$execute if entity @s[nbt={Inventory:[{id:"minecraft:heart_of_the_sea"}]}] if score @s kn matches 1.. run give @s emerald $(divination_price)
execute if entity @s[nbt={Inventory:[{id:"minecraft:heart_of_the_sea"}]}] if score @s kn matches 1.. run tellraw @s [{"color":"red","text":"先に祈願を行ってください。"}]
execute if entity @s[nbt={Inventory:[{id:"minecraft:heart_of_the_sea"}]}] if score @s kn matches 1.. run clear @s heart_of_the_sea{CustomModelData:2} 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:heart_of_the_sea"}]}] run scoreboard players add @s ur 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:heart_of_the_sea"}]}] run tellraw @s {"text":"占い可能回数が１回増えた。","color":"blue","bold":true,"italic": false}
execute if entity @s[nbt={Inventory:[{id:"minecraft:heart_of_the_sea"}]}] run clear @s heart_of_the_sea{CustomModelData:2} 1

# 騎士の祈り
$execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand"}]}] if score @s ur matches 1.. run give @s emerald $(knight_price)
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand"}]}] if score @s ur matches 1.. run tellraw @s [{"color":"red","text":"先に占いを行ってください。"}]
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand"}]}] if score @s ur matches 1.. run clear @s armor_stand{CustomModelData:2} 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand"}]}] run scoreboard players add @s kn 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand"}]}] run tellraw @s {"text":"祈願可能回数が１回増えた。","color":"dark_red","bold":true,"italic": false}
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand"}]}] run clear @s armor_stand{CustomModelData:2} 1

# 共犯者の目
$execute if entity @s[nbt={Inventory:[{id:"minecraft:end_crystal"}]}] unless entity @s[tag=mad_alive] run give @s emerald $(accomplice_eye_price)
execute if entity @s[nbt={Inventory:[{id:"minecraft:end_crystal"}]}] unless entity @s[tag=mad_alive] run clear @s end_crystal 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:end_crystal"}]}] if entity @s[tag=mad_alive] run function ww:role/eye/ with storage eye:
execute if entity @s[nbt={Inventory:[{id:"minecraft:end_crystal"}]}] if entity @s[tag=mad_alive] run clear @s end_crystal 1

# プロビデンスの眼光
execute if entity @s[nbt={Inventory:[{id:"minecraft:sunflower"}]}] run effect give @a[tag=entry] glowing 30 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:sunflower"}]}] run tellraw @a {"text":"プロビデンスの眼光！！！","color":"yellow","bold":true,"italic": false}
execute if entity @s[nbt={Inventory:[{id:"minecraft:sunflower"}]}] run clear @s sunflower{CustomModelData:2} 1