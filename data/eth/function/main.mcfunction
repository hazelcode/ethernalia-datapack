# Contador de día
execute store result score .Actual eth.dia run time query day
title @a actionbar [{text: ">>> ", color: "red", bold: true}, {text: "Día ", color: "aqua", bold: false},{score: {name:".Actual", objective:"eth.dia"}, bold: false, italic: true, color: "dark_aqua"}, {text: " <<<", color: "red", bold: true, italic: false}]

# Mensaje de bienvenida (solo después de salir)
execute as @a[scores={eth.salioDelJuego=1..}, limit=1] run function eth:bienvenido