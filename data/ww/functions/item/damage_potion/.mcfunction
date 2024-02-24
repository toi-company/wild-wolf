damage @s[tag=!knight] 5 minecraft:indirect_magic by @p[tag=scientist_alive]
kill @s[tag=allergy]
tag @s add allergy
playsound entity.player.levelup player @s ~ ~ ~ 0.01 1 0.01
effect clear @s unluck