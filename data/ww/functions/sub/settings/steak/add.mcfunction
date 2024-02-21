scoreboard players add #shop_beef_price temporary 1
execute if score #shop_beef_price temporary matches ..-1 run function ww:sub/settings/steak/add
function ww:settings/shop/combat/steak/