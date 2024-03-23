summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["dropitem"]}
$data modify entity @e[tag=dropitem,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot:$(Slot)b}]