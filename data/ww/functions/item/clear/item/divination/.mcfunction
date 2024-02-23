# 占い師の心
$execute if score @s kn matches 1.. run give @s emerald $(divination_price)
execute if score @s kn matches 1.. run tellraw @s [{"color":"red","text":"先に祈願を行ってください。"}]
execute if score @s kn matches 1.. run clear @s heart_of_the_sea{CustomModelData:2} 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:heart_of_the_sea"}]}] run scoreboard players add @s ur 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:heart_of_the_sea"}]}] run tellraw @s {"text":"占い可能回数が１回増えた。","color":"blue","bold":true,"italic": false}
execute if entity @s[nbt={Inventory:[{id:"minecraft:heart_of_the_sea"}]}] run clear @s heart_of_the_sea{CustomModelData:2} 1