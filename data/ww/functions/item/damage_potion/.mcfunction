damage @s[tag=!knight,tag=!vampire_alive] 5 minecraft:indirect_magic by @p[tag=scientist_alive]
kill @s[tag=allergy,tag=!vampire_alive]
tag @s[tag=!vampire_alive] add allergy
playsound entity.player.levelup player @s ~ ~ ~ 0.01 1 0.01
effect clear @s unluck