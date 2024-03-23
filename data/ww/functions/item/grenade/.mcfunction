# grenade
execute as @e[type=snowball] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoGravity:1b,Tags:["granade"]}
scoreboard players add @e[type=minecraft:armor_stand,tag=granade] stun 1
execute as @e[type=armor_stand,tag=granade,scores={stun=1}] at @s run kill @e[type=minecraft:armor_stand,tag=granade,scores={stun=2},distance=..5]
execute as @e[type=snowball] at @s run particle minecraft:instant_effect ~ ~ ~ 0.2 0.2 0.2 0 5
execute as @e[type=armor_stand,tag=granade,scores={stun=2}] at @s run playsound minecraft:entity.firework_rocket.blast master @a
execute as @e[type=armor_stand,tag=granade,scores={stun=2}] at @s run tag @e[distance=..2,gamemode=!spectator] add grenade
execute as @e[type=armor_stand,tag=granade,scores={stun=2}] at @s positioned ~ ~-0.5 ~ run tag @e[distance=..2,gamemode=!spectator] add grenade
execute as @e[type=armor_stand,tag=granade,scores={stun=2}] at @s positioned ~ ~-1 ~ run tag @e[distance=..2,gamemode=!spectator] add grenade
execute as @e[type=armor_stand,tag=granade,scores={stun=2}] at @s positioned ~ ~-1.5 ~ run tag @e[distance=..2,gamemode=!spectator] add grenade
execute as @e[type=armor_stand,tag=granade,scores={stun=2}] at @s positioned ~ ~-2 ~ run tag @e[distance=..2,gamemode=!spectator] add grenade
execute as @e[type=armor_stand,tag=granade,scores={stun=2}] at @s run particle squid_ink ~ ~ ~ 0 0.5 0.5 0 5
effect give @e[tag=grenade] blindness 3 255 true
effect give @e[tag=grenade] slowness 2 255 true
tag @a remove grenade
kill @e[type=armor_stand,tag=granade,scores={stun=5..}]