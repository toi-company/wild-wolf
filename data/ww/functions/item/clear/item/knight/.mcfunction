$execute if score @s ur matches 1.. run give @s emerald $(knight_price)
execute if score @s ur matches 1.. run tellraw @s [{"color":"red","text":"先に占いを行ってください。"}]
execute if score @s ur matches 1.. run clear @s armor_stand{CustomModelData:2} 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand"}]}] run scoreboard players add @s kn 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand"}]}] run tellraw @s {"text":"祈願可能回数が１回増えた。","color":"dark_red","bold":true,"italic": false}
execute if entity @s[nbt={Inventory:[{id:"minecraft:armor_stand"}]}] run clear @s armor_stand{CustomModelData:2} 1