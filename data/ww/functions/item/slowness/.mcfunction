execute at @s run playsound minecraft:block.sweet_berry_bush.pick_berries player @a ~ ~ ~ 1 1 0
effect give @p[distance=0.1..,tag=entry,gamemode=!spectator] slowness 10
effect give @p[distance=0.1..,tag=entry,gamemode=!spectator] nausea 8
effect give @p[distance=0.1..,tag=entry,gamemode=!spectator] blindness 6
clear @s end_rod{CustomModelData:2} 1

advancement revoke @s only ww:slowness