give @s villager_spawn_egg{display:{Name:'{"text":"戦闘ショップ スポーンエッグ","color":"red","bold":true,"italic":false}'},EntityTag:{NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Health:1000f,Tags:["combat","combat_spawn"],CustomName:'{"text":"戦闘"}',Attributes:[{Name:"generic.max_health",Base:1000}],VillagerData:{level:1,profession:"minecraft:none",type:"minecraft:plains"}}} 1
execute at @s run tp @e[sort=nearest,limit=1,type=villager,tag=combat] ^ ^ ^ facing entity @s