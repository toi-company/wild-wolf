
# death
execute if entity @e[scores={death_count=1..}] as @e[scores={death_count=1..}] run function ww:death/

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

# wolf attribute
function ww:sub/attribute/wolf/attack_damage/ with storage ww:settings
function ww:sub/attribute/wolf/max_health/ with storage ww:settings

# item
execute as @a[tag=entry,predicate=ww:inventory] at @s if score #day_time temporary matches 1.. run function ww:item/clear/day/
execute as @a[tag=entry,predicate=ww:inventory] at @s if score #night_time temporary matches 1.. run function ww:item/clear/night/

# inGroundkill
kill @e[nbt={inGround:true}]

# cooltime
scoreboard players remove @a[scores={ur_cooltime=1..}] ur_cooltime 1
scoreboard players remove @a[scores={kn_cooltime=1..}] kn_cooltime 1

#resistance
execute as @a[tag=knight] run effect give @s resistance 1 255 true
execute as @a[tag=!knight] run effect clear @s resistance

# cycle
execute if score #night_time temporary matches 0.. run function ww:cycle/night/active/
execute if score #night_time temporary matches 0 run scoreboard players set #night_time_tick temporary 20
execute if score #night_time temporary matches 0 run function ww:cycle/day/switch/
execute if score #day_time temporary matches 0.. run function ww:cycle/day/active/
execute if score #day_time temporary matches 0 run scoreboard players set #day_time_tick temporary 20
execute if score #day_time temporary matches 0 run function ww:cycle/night/switch/

# grenade
function ww:item/grenade/

# potion_boost
execute as @e[type=potion,nbt={Item:{tag:{ww:throw_potion}}},limit=1,sort=random,tag=!boost] at @s run function ww:item/slowness/

# skip
scoreboard players set #skip_2 temporary 2
execute store result score #skip_alive temporary if entity @a[tag=alive]
#scoreboard players operation #skip_alive temporary = #skip_alive_all temporary
scoreboard players operation #skip_alive temporary /= #skip_2 temporary

execute as @a[scores={skip=1..},tag=alive] run function ww:skip

# arsenic
execute as @a[scores={bottle=1..}] at @s run function ww:item/arsenic_compound/
execute as @a[scores={arsenic_timer_tick=0..}] run scoreboard players remove @s arsenic_timer_tick 1
execute as @a[scores={arsenic_timer_tick=0}] at @s run particle dust 1 1 0 1 ~ ~ ~ 0.5 1 0.5 1 200
execute as @a[scores={arsenic_timer_tick=0}] at @s run tp ~ -1000 ~
execute as @a[scores={arsenic_timer_tick=0}] at @s run kill @s