# death
execute as @r[scores={death_count=1..}] run tag @s add death
execute as @e[tag=death] run function ww:death/

# vcondition
function ww:functions/vcondition/
execute if data storage condition: timer run function ww:functions/vcondition/timer
execute if data storage condition: turn run function ww:functions/vcondition/turn

# 初日無敵
execute if score #turn temporary matches ..1 run tag @a add knight

# particle
execute as @e[type=marker,name="会議"] at @s run particle dust 1 1 1 1 ~ ~ ~ 0.225 0.1 0.225 0 5

# ur
execute as @e[type=marker,name="会議",limit=1,sort=random] at @s if entity @a[distance=0..1] run function ww:role/ur/

# kr
execute as @e[type=marker,name="会議",limit=1,sort=random] at @s if entity @a[distance=0..1] run function ww:role/kr/

# glass_bottle
execute as @a[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] if entity @s[tag=!scientist_alive] run function ww:item/clear/item/glass_bottle/ with storage ww:settings shop

# damage_potion
execute as @a[nbt={active_effects:[{id:"minecraft:unluck",amplifier:20b}]}] run function ww:item/damage_potion/

# item
execute as @a[tag=entry,predicate=ww:inventory] at @s if score #day_time temporary matches 1.. run function ww:item/clear/day/
execute as @a[tag=entry,predicate=ww:inventory] at @s if score #night_time temporary matches 1.. run function ww:item/clear/night/

# inGroundkill
kill @e[nbt={inGround:true}]

# cooltime
scoreboard players remove @a[scores={ur_cooltime=1..}] ur_cooltime 1
scoreboard players remove @a[scores={kn_cooltime=1..}] kn_cooltime 1

# 血痕
execute as @a[scores={health=..35},tag=alive] unless entity @s[scores={blood_timer=1..}] run tag @s add blood
execute as @a[tag=alive,scores={blood_timer=0}] at @s run summon area_effect_cloud ~ ~-0.05 ~ {Particle:"dust 0.439 0.000 0.000 1.5 ",ReapplicationDelay:1,Radius:0.1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:18,DurationOnUse:0,Age:0,WaitTime:0}
scoreboard players remove @a[scores={blood_timer=0..}] blood_timer 1
execute as @a[tag=alive,scores={health=..35},tag=blood] store result score @s blood_timer run random value 0..4

#resistance
execute as @a[tag=knight] run effect give @s resistance 1 255 true
execute as @a[tag=!knight,tag=!vampire_alive] run effect clear @s resistance

# cycle
execute if score #night_time temporary matches 0.. run function ww:cycle/night/active/
execute if score #night_time temporary matches 0 run scoreboard players set #night_time_tick temporary 20
execute if score #night_time temporary matches 0 run function ww:cycle/day/switch/
execute if score #day_time temporary matches 0.. run function ww:cycle/day/active/
execute if score #day_time temporary matches 0 run scoreboard players set #day_time_tick temporary 20
execute if score #day_time temporary matches 0 run function ww:cycle/night/switch/

# grenade
function ww:item/grenade/

# black_stained_glass_pane
kill @e[type=item,nbt={Item:{tag:{ww:locked_glass}}}]

# wolf_axe
execute as @a[tag=wolf_axe_cooltime] run function ww:item/wolf_axe/cooltime

# potion_boost
execute as @e[type=potion,nbt={Item:{tag:{ww:throw_potion}}},limit=1,sort=random,tag=!boost] at @s anchored eyes run function ww:item/slowness/

# skip
execute store result score #skip_alive temporary if entity @a[tag=alive]
execute as @a[scores={skip=1..},tag=alive] run function ww:skip

# arsenic
execute as @a[scores={bottle=1..}] at @s anchored eyes run function ww:item/arsenic_compound/
execute as @a[scores={arsenic_timer_tick=0..}] run scoreboard players remove @s arsenic_timer_tick 1
execute as @a[scores={arsenic_timer_tick=0..}] at @s run particle minecraft:dust 1 0 1 1 ~ ~2.5 ~ 0.01 0.01 0.01 0 1
execute as @a[scores={arsenic_timer_tick=0}] at @s run particle dust 1 1 0 1 ~ ~ ~ 0.3 1 0.3 1 200
execute as @a[scores={arsenic_timer_tick=0}] at @s run tp ~ -1000 ~
execute as @a[scores={arsenic_timer_tick=0}] at @s run kill @s