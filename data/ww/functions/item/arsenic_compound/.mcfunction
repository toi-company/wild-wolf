kill @e[limit=1,sort=nearest,type=experience_bottle]
scoreboard players set @s bottle 0
tag @s add arsenic_use
summon marker ^ ^ ^0.1 {Tags:["ww.arsenic"]}
summon marker ^ ^ ^0.2 {Tags:["ww.arsenic"]}
summon marker ^ ^ ^0.3 {Tags:["ww.arsenic"]}
summon marker ^ ^ ^0.4 {Tags:["ww.arsenic"]}
summon marker ^ ^ ^0.5 {Tags:["ww.arsenic"]}
summon marker ^ ^ ^0.6 {Tags:["ww.arsenic"]}
summon marker ^ ^ ^0.7 {Tags:["ww.arsenic"]}
summon marker ^ ^ ^0.8 {Tags:["ww.arsenic"]}
summon marker ^ ^ ^0.9 {Tags:["ww.arsenic"]}
execute as @e[type=marker,nbt={Tags:["ww.arsenic"]}] at @s run particle dust 1 0 1 1 ~ ~ ~ 0.2 0.2 0.2 1 50
execute store result score #arsemic_luck temporary run random value 1..10
execute if score #turn temporary matches ..1 run scoreboard players set #arsemic_luck temporary 0
execute if score #arsemic_luck temporary matches 1..8 as @e[tag=ww.arsenic] at @s as @a[dx=0,dy=0,dz=0,tag=!arsenic_use] positioned ^ ^ ^-0.9 as @s[dx=0,dy=0,dz=0] store result score @s arsenic_timer_tick run random value 600..900
kill @e[type=marker,nbt={Tags:["ww.arsenic"]}]
tag @s remove arsenic_use