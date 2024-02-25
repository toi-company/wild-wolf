execute if entity @e[tag=combat_spawn] as @e[tag=combat_spawn] at @s run tp @e[sort=nearest,limit=1,type=villager,tag=combat_spawn] ^ ^ ^ facing entity @a[limit=1,tag=host]
execute if entity @e[tag=combat_spawn] as @e[tag=combat_spawn] at @s run tag @e[tag=combat_spawn] remove combat_spawn

execute if entity @e[tag=support_spawn] as @e[tag=support_spawn] at @s run tp @e[sort=nearest,limit=1,type=villager,tag=support_spawn] ^ ^ ^ facing entity @a[limit=1,tag=host]
execute if entity @e[tag=support_spawn] as @e[tag=support_spawn] at @s run tag @e[tag=support_spawn] remove support_spawn

advancement revoke @a only ww:shop_rotation