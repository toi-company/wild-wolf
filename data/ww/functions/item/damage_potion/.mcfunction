execute unless score #turn temporary matches ..1 run damage @s[tag=!knight,tag=!vampire_alive] 5 minecraft:indirect_magic by @p[tag=scientist_alive]
execute unless score #turn temporary matches ..1 run kill @s[tag=allergy,tag=!vampire_alive]
execute unless score #turn temporary matches ..1 run tag @s[tag=!vampire_alive] add allergy
execute unless score #turn temporary matches ..1 run playsound entity.player.levelup player @s ~ ~ ~ 0.01 1 0.01
effect clear @s unluck