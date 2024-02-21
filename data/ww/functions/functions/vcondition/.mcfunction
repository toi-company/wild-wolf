execute if entity @a[tag=wolf_alive] unless entity @a[tag=ctz_alive] run function ww:win/wolf
execute if entity @a[tag=ctz_alive] unless entity @a[tag=wolf_alive] run function ww:win/ctz
execute if entity @a[tag=mad_alive] unless entity @a[tag=wolf_alive] unless entity @a[tag=ctz_alive] run function ww:win/wolf