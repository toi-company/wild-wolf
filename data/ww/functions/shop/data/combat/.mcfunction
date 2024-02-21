execute store result storage ww:settings shop.bow_price int 1 run scoreboard players get #shop_bow_price temporary
execute store result storage ww:settings shop.arrow_price int 1 run scoreboard players get #shop_arrow_price temporary
execute store result storage ww:settings shop.stun_price int 1 run scoreboard players get #shop_stun_price temporary
execute store result storage ww:settings shop.skeleton_sword_price int 1 run scoreboard players get #shop_skeleton_sword_price temporary
execute store result storage ww:settings shop.wolf_axe_price int 1 run scoreboard players get #shop_wolf_axe_price temporary
execute store result storage ww:settings shop.beef_price int 1 run scoreboard players get #shop_beef_price temporary
execute store result storage ww:settings shop.skeleton_sword_damage int 1 run data get storage ww:settings skeleton_health

function ww:shop/data/combat/append with storage ww:settings shop