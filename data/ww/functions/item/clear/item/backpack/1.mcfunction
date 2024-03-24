scoreboard players add @s backpack 1
tellraw @s {"text":"使用可能なスロットの数が6増えた！"}
function ww:item/barrier/
clear @s chest{CustomModelData:2} 1