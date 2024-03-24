advancement revoke @s only ww:barrier
execute if data storage ww: in_game if entity @s[tag=alive,scores={backpack=0}] run function ww:item/barrier/normal
execute if data storage ww: in_game if entity @s[tag=alive,scores={backpack=1}] run function ww:item/barrier/1
execute if data storage ww: in_game if entity @s[tag=alive,scores={backpack=2}] run function ww:item/barrier/2
execute if data storage ww: in_game if entity @s[tag=alive,scores={backpack=3}] run function ww:item/barrier/3
execute if data storage ww: in_game if entity @s[tag=alive,scores={backpack=4}] run function ww:item/barrier/4
execute if data storage ww: in_game if entity @s[tag=alive,scores={backpack=5}] run function ww:item/barrier/5