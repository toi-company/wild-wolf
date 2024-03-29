# hostタグ付与
scoreboard players add #host temporary 0
execute unless score #host temporary matches 1.. run tag @a add host
execute unless score #host temporary matches 1.. run scoreboard players set #host temporary 1

# bossbar
bossbar add day_time {"bold":true,"color":"yellow","italic":false,"text":"DAY TIME"}
bossbar add night_time {"bold":true,"color":"blue","italic":false,"text":"NIGHT TIME"}
bossbar set day_time color yellow
bossbar set night_time color purple
bossbar set day_time style notched_6
bossbar set night_time style notched_6
bossbar set day_time visible true
bossbar set night_time visible true

# scoreboard objective
scoreboard objectives add temporary dummy
scoreboard objectives add death_count deathCount
scoreboard objectives add role dummy
scoreboard objectives add role_list dummy "役職一覧"
scoreboard objectives add ur trigger "占い"
scoreboard objectives add player_id dummy
scoreboard objectives setdisplay sidebar role_list
scoreboard objectives add sneak custom:minecraft.sneak_time
scoreboard objectives add win_count dummy "勝利数"
scoreboard objectives add emerald dummy "エメラルド"
scoreboard objectives setdisplay list win_count
scoreboard objectives add ur_cooltime dummy
scoreboard objectives add kn dummy
scoreboard objectives add kn_cooltime dummy
scoreboard objectives add leave custom:leave_game
scoreboard objectives add stun dummy
scoreboard objectives add skip trigger "スキップ"
scoreboard objectives add bottle used:experience_bottle
scoreboard objectives add arsenic_timer_tick dummy
scoreboard objectives add game_count dummy
scoreboard objectives add wolf_axe_cooltime dummy
scoreboard objectives add backpack dummy
scoreboard objectives add health health
scoreboard objectives add blood_timer dummy

# scoreboard players
scoreboard players add #day_time temporary 0
scoreboard players add #night_time temporary 0
scoreboard players add @a role 0
scoreboard players add #reserve_timer_set temporary 0
scoreboard players add #count game_count 0
execute if score #reserve_timer_set temporary matches 0 run scoreboard players set #reserve_timer_set temporary 15
execute store result storage ww:settings reserve_timer int 1 run scoreboard players get #reserve_timer_set temporary

# gamerule
gamerule doDaylightCycle false
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule doMobLoot false
gamerule doWeatherCycle false
gamerule naturalRegeneration true
gamerule doMobSpawning false

# team
team add game
team modify game nametagVisibility never
team modify game friendlyFire true
team modify game seeFriendlyInvisibles false

# data
scoreboard players add #temp_load_data temporary 0
execute if score #temp_load_data temporary matches 0 run data remove storage wherewolf: roles
execute if score #temp_load_data temporary matches 0 run data modify storage wherewolf: roles append value {id:0,name:"市民",ur_name:"市民",view_name:"市民",color:"green",ur_color:"green",vcondition:"ctz",lore:"仲間と協力して生き延びよう！"}
execute if score #temp_load_data temporary matches 0 run data modify storage wherewolf: roles append value {id:1,name:"人狼",ur_name:"人狼",view_name:"人狼",color:"red",ur_color:"red",vcondition:wolf,value:1,lore:"自身が人狼とばれないようにして自分以外の人々を全滅させよう！"}
execute if score #temp_load_data temporary matches 0 run data modify storage wherewolf: roles append value {id:2,name:"共犯者",ur_name:"市民",view_name:"共犯者",color:"red",ur_color:"green",vcondition:mad,value:0,lore:"人狼を探し当て、ともに勝利を掴み取ろう！"}
execute if score #temp_load_data temporary matches 0 run data modify storage wherewolf: roles append value {id:3,name:"吸血鬼",ur_name:"吸血鬼",view_name:"吸血鬼",color:"red",ur_color:"red",vcondition:vampire,value:0,lore:"自身が吸血鬼だとばれないようにして試合終了時まで生き延びよう！"}
execute if score #temp_load_data temporary matches 0 run data modify storage wherewolf: roles append value {id:4,name:"狼憑き",ur_name:"人狼",view_name:"市民",color:"green",ur_color:"red",vcondition:ctz,value:0,lore:"仲間と協力して生き延びよう！"}
execute if score #temp_load_data temporary matches 0 run data modify storage wherewolf: roles append value {id:5,name:"科学者",ur_name:"科学者",view_name:"科学者",color:"dark_green",ur_color:"dark_green",vcondition:scientist,value:0,lore:"ショップで買える様々な発明品を使い自分以外の人々を全滅させよう！"}
execute if score #temp_load_data temporary matches 0 run data modify storage ur: role set value 0
execute if score #temp_load_data temporary matches 0 run data modify storage kr: role set value 0

execute if score #temp_load_data temporary matches 0 run scoreboard players add #temp_load_data temporary 1

# create
scoreboard players add #create temporary 0
execute if score #create temporary matches 0 run scoreboard players set #max_health_set temporary 40
execute if score #create temporary matches 0 store result storage ww:settings max_health double 1 run scoreboard players get #max_health_set temporary
execute if score #create temporary matches 0 run scoreboard players set #skeleton_health_set temporary 4
execute if score #create temporary matches 0 run scoreboard players set #day_time_set temporary 120
execute if score #create temporary matches 0 run scoreboard players set #night_time_set temporary 120
execute if score #create temporary matches 0 run data modify storage ww:settings item.wolf_axe_price set value 3
execute if score #create temporary matches 0 run scoreboard players set #shop_bow_price temporary 2
execute if score #create temporary matches 0 run scoreboard players set #shop_arrow_price temporary 2
execute if score #create temporary matches 0 run scoreboard players set #shop_beef_price temporary 1
execute if score #create temporary matches 0 run scoreboard players set #shop_skeleton_sword_price temporary 4
execute if score #create temporary matches 0 run scoreboard players set #shop_stun_price temporary 2
execute if score #create temporary matches 0 run scoreboard players set #shop_wolf_axe_price temporary 3
execute if score #create temporary matches 0 run scoreboard players set #shop_speed_potion_price temporary 1
execute if score #create temporary matches 0 run scoreboard players set #shop_invisible_potion_price temporary 4
execute if score #create temporary matches 0 run scoreboard players set #shop_divination_price temporary 5
execute if score #create temporary matches 0 run scoreboard players set #shop_medium_price temporary 4
execute if score #create temporary matches 0 run scoreboard players set #shop_knight_price temporary 4
execute if score #create temporary matches 0 run scoreboard players set #shop_accomplice_eye_price temporary 5
execute if score #create temporary matches 0 run scoreboard players set #shop_backpack_price temporary 6
execute if score #create temporary matches 0 run scoreboard players set #shop_eye_of_providence_price temporary 8
execute if score #create temporary matches 0 run scoreboard players set #shop_holy_cross_price temporary 2
execute if score #create temporary matches 0 run scoreboard players set #shop_spellbook_tenkei_price temporary 2
execute if score #create temporary matches 0 run scoreboard players set #shop_emerald_glass_bottle_price temporary 1
execute if score #create temporary matches 0 run scoreboard players set #shop_glass_bottle_damage_potion_price temporary 3
execute if score #create temporary matches 0 run scoreboard players set #shop_glass_bottle_invisible_potion_price temporary 2
execute if score #create temporary matches 0 run scoreboard players set #shop_glass_bottle_slowness_potion_price temporary 2
execute if score #create temporary matches 0 run scoreboard players set #shop_glass_bottle_arsemic_price temporary 5
execute if score #create temporary matches 0 run scoreboard players set #skeleton_max_set temporary 100

execute if score #create temporary matches 0 run scoreboard players add #create temporary 1

# load
tellraw @a {"text":"load complete ww:","color":"yellow"}