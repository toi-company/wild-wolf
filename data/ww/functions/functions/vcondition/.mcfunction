execute unless entity @a[tag=vampire] unless entity @a[tag=ctz_alive] unless entity @a[tag=wolf_alive] unless entity @a[tag=mad_alive] run function ww:win/draw
execute if entity @a[tag=wolf_alive] unless entity @a[tag=vampire_alive] unless entity @a[tag=ctz_alive] run function ww:win/wolf
execute if entity @a[tag=ctz_alive] unless entity @a[tag=vampire_alive] unless entity @a[tag=wolf_alive] run function ww:win/ctz
execute if entity @a[tag=mad_alive] unless entity @a[tag=vampire_alive] unless entity @a[tag=wolf_alive] unless entity @a[tag=ctz_alive] run function ww:win/wolf
execute if entity @a[tag=vampire_alive] if entity @a[tag=ctz_alive] unless entity @a[tag=wolf_alive] unless entity @a[tag=mad_alive] run function ww:win/vampire
execute if entity @a[tag=vampire_alive] if entity @a[tag=wolf_alive] unless entity @a[tag=ctz_alive] run function ww:win/vampire
execute if entity @a[tag=vampire_alive] if entity @a[tag=mad_alive] unless entity @a[tag=wolf_alive] unless entity @a[tag=ctz_alive] run function ww:win/vampire
execute if entity @a[tag=vampire_alive] unless entity @a[tag=ctz_alive] unless entity @a[tag=wolf_alive] unless entity @a[tag=mad_alive] run function ww:win/vampire