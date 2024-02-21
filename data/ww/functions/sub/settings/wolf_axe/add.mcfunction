scoreboard players add #shop_wolf_axe_price temporary 1
execute if score #shop_wolf_axe_price temporary matches ..-1 run function ww:sub/settings/wolf_axe/add
function ww:settings/shop/combat/wolf_axe/