
# death
execute if entity @e[scores={death_count=1..}] as @e[scores={death_count=1..}] run function ww:death/

# vcondition
function ww:functions/vcondition/
execute if data storage condition: timer run function ww:functions/vcondition/timer
execute if data storage condition: turn run function ww:functions/vcondition/turn

# particle
execute as @e[type=marker] at @s run particle dust 1 1 1 1 ~ ~ ~ 0.225 0.1 0.225 0 5

# ur
execute as @e[type=marker] at @s if entity @a[distance=0..1] run function ww:role/ur/

# kr
execute as @e[type=marker] at @s if entity @a[distance=0..1] run function ww:role/kr/

# wolf attribute
function ww:sub/attribute/wolf/attack_damage/ with storage ww:settings
function ww:sub/attribute/wolf/max_health/ with storage ww:settings

# item
execute as @a[tag=entry,predicate=ww:inventory] if score #day_time temporary matches 1.. run function ww:item/clear/day/
execute as @a[tag=entry,predicate=ww:inventory] if score #night_time temporary matches 1.. run function ww:item/clear/night/

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
execute if score #day_time temporary matches 0.. run function ww:cycle/day/active/
execute if score #night_time temporary matches 0 run function ww:cycle/day/switch/
execute if score #day_time temporary matches 0 run function ww:cycle/night/switch/
execute if score #night_time temporary matches 0 run scoreboard players set #night_time_tick temporary 20
execute if score #day_time temporary matches 0 run scoreboard players set #day_time_tick temporary 20
# grenade
function ww:item/grenade/