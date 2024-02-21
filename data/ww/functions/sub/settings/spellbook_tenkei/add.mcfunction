scoreboard players add #shop_spellbook_tenkei_price temporary 1
execute if score #shop_spellbook_tenkei_price temporary matches ..-1 run function ww:sub/settings/spellbook_tenkei/add
function ww:settings/shop/support/spellbook_tenkei/