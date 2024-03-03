execute as @p at @s positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["potion_booster"]}
data modify entity @s Motion set from entity @e[tag=potion_booster,limit=1] Pos
damage @s 0 minecraft:generic_kill
tag @s add boost
kill @e[tag=potion_booster]
execute as @e[type=potion,nbt={Item:{tag:{ww:throw_potion}}},limit=1,sort=random,tag=!boost] at @s run function ww:item/slowness/