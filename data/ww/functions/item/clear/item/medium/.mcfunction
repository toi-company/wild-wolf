execute if entity @a[scores={death_count=1..}] run tellraw @s [{"selector":"@a[tag=entry]","color":"white"},{"text":"中、","color":"gray"},{"selector":"@a[tag=!alive,tag=entry]","color":"red"},{"text":"が死亡しています。","color":"gray"}]
execute unless entity @a[scores={death_count=1..}] run tellraw @s [{"text":"現在誰も死亡していません！","color":"red"}]
clear @s gunpowder{CustomModelData:2} 1