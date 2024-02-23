execute unless entity @s[tag=has_tenkei] run tag @s add tenkei
execute unless entity @s[tag=has_tenkei] run tellraw @s {"text":"天啓の呪符を使用した。","color":"yellow","bold":true,"italic": false}
execute unless entity @s[tag=has_tenkei] run clear @s paper{CustomModelData:2} 1
tag @s add has_tenkei