scoreboard players remove #shop_stun_price temporary 1
execute if score #shop_stun_price temporary matches ..-1 run function ww:sub/settings/stun/add
function ww:settings/shop/combat/stun/