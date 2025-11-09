# Contador de día
execute store result score .Actual eth.dia run time query day
execute as @a store result score @s eth.xp run xp query @s levels

# Overlay
scoreboard players set .NvlXPGlobal eth.sidebar_overlay 0
execute as @a run scoreboard players operation .NvlXPGlobal eth.sidebar_overlay += @s eth.xp

scoreboard players set .Muertes eth.sidebar_overlay 0
execute as @a run scoreboard players operation .Muertes eth.sidebar_overlay += @s eth.muertes

scoreboard players operation .Dia eth.sidebar_overlay = .Actual eth.dia

# title @a actionbar [{text: ">>> ", color: "red", bold: true}, {text: "Día ", color: "aqua", bold: false},{score: {name:".Actual", objective:"eth.dia"}, bold: false, italic: true, color: "dark_aqua"}, {text: " <<<", color: "red", bold: true, italic: false}]

# Mensaje de bienvenida (solo después de salir)
execute as @a[scores={eth.salioDelJuego=1..}, limit=1] run function eth:bienvenido