$execute unless entity @s[scores={backpack=0..4}] run give @s emerald $(backpack_price)
execute unless entity @s[scores={backpack=0..4}] run clear @s chest{CustomModelData:2} 1
execute if entity @s[scores={backpack=0..4}] run function ww:item/clear/item/backpack/1