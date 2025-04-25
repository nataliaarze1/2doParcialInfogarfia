local physics = require("physics")
physics.start()
physics.setGravity(0, 0)

local CW = display.contentWidth
local CH = display.contentHeight

-- Fondo
local fondo = display.newImageRect("fondo.png", CW, CH)
fondo.anchorX = 0
fondo.anchorY = 0

local inicioZebrita = display.newImageRect("tortuguita.png", CW/6, CH/6)
inicioZebrita.anchorX = 0
inicioZebrita.anchorY = 0
inicioZebrita.x = 600
inicioZebrita.y = 25

local grupoZebra = display.newGroup()

local inicioZebrita = display.newImageRect("zebrita.png", CW/30+50, CH/30+60)
inicioZebrita.anchorX = 0.5
inicioZebrita.anchorY = 0.5
inicioZebrita.x = 17
inicioZebrita.y = 135


local zebrita2 = display.newImageRect("zebrita.png", CW/30+60, CH/30+50)
zebrita2.anchorX = 0.5
zebrita2.anchorY = 0.5
zebrita2.x = 390
zebrita2.y = 27

local zebrita3 = display.newImageRect("zebrita.png", CW/30+25, CH/30+70)
zebrita3.anchorX = 0.5
zebrita3.anchorY = 0.5
zebrita3.x = 5
zebrita3.y = 650

local zebrita4 = display.newImageRect("zebrita.png", CW/30+55, CH/30+50)
zebrita4.anchorX = 0.5
zebrita4.anchorY = 0.5
zebrita4.x = 990
zebrita4.y = 30
zebrita4.rotation = 50

local zebrita5 = display.newImageRect("zebrita.png", CW/30+55, CH/30+50)
zebrita5.anchorX = 0.5
zebrita5.anchorY = 0.5
zebrita5.x = 1020
zebrita5.y = 250
zebrita5.rotation = 140


grupoZebra:insert(zebrita5)
grupoZebra:insert(zebrita4)
grupoZebra:insert(zebrita3)
grupoZebra:insert(zebrita2)
grupoZebra:insert(inicioZebrita)
grupoZebra:toFront()


local ruta1 = {
    { x = 3, y = 131 },
    { x = 21, y = 132 },
    { x = 48, y = 131 },
    { x = 78, y = 132 },
    { x = 104, y = 132 },
    { x = 138, y = 132 },
    { x = 169, y = 132 },
    { x = 212, y = 129 },
    { x = 232, y = 130 },
    { x = 261, y = 131 },
    { x = 291, y = 130 },
    { x = 318, y = 130 },
    { x = 337, y = 132 },
    { x = 374, y = 127 },
    { x = 375, y = 147 },
    { x = 374, y = 162 },
    { x = 374, y = 189 },
    { x = 374, y = 208 },
    { x = 374, y = 232 },
    { x = 375, y = 258 },
    { x = 375, y = 279 },
    { x = 381, y = 300 },
    { x = 387, y = 307 },
    { x = 393, y = 315 },
    { x = 404, y = 324 },
    { x = 413, y = 327 },
    { x = 429, y = 330 },
    { x = 448, y = 326 },
    { x = 463, y = 319 },
    { x = 474, y = 311 },
    { x = 480, y = 286 },
    { x = 484, y = 267 },
    { x = 480, y = 249 },
    { x = 472, y = 235 },
    { x = 462, y = 225 },
    { x = 451, y = 220 },
    { x = 440, y = 218 },
    { x = 428, y = 216 },
    { x = 417, y = 216 },
    { x = 407, y = 221 },
    { x = 375, y = 345 },
    { x = 376, y = 362 },
    { x = 376, y = 376 },
    { x = 376, y = 393 },
    { x = 377, y = 400 },
    { x = 377, y = 413 },
    { x = 376, y = 428 },
    { x = 376, y = 448 },
    { x = 376, y = 461 },
    { x = 375, y = 473 },
    { x = 375, y = 484 },
    { x = 378, y = 547 },
    { x = 377, y = 564 },
    { x = 377, y = 593 },
    { x = 377, y = 606 },
    { x = 377, y = 614 },
    { x = 377, y = 630 },
    { x = 378, y = 653 },
    { x = 378, y = 667 },
    { x = 377, y = 685 },
    { x = 376, y = 699 },
    { x = 375, y = 707 }
}
local ruta2 = {
    { x = 0, y = 128 },
    { x = 15, y = 128 },
    { x = 38, y = 128 },
    { x = 53, y = 129 },
    { x = 69, y = 128 },
    { x = 90, y = 129 },
    { x = 108, y = 129 },
    { x = 120, y = 128 },
    { x = 141, y = 129 },
    { x = 152, y = 130 },
    { x = 173, y = 130 },
    { x = 190, y = 132 },
    { x = 202, y = 130 },
    { x = 215, y = 129 },
    { x = 226, y = 129 },
    { x = 240, y = 132 },
    { x = 252, y = 130 },
    { x = 266, y = 128 },
    { x = 287, y = 132 },
    { x = 300, y = 132 },
    { x = 318, y = 131 },
    { x = 331, y = 131 },
    { x = 341, y = 130 },
    { x = 416, y = 132 },
    { x = 432, y = 129 },
    { x = 449, y = 130 },
    { x = 471, y = 129 },
    { x = 495, y = 130 },
    { x = 512, y = 131 },
    { x = 525, y = 133 },
    { x = 535, y = 137 },
    { x = 549, y = 144 },
    { x = 561, y = 159 },
    { x = 568, y = 165 },
    { x = 578, y = 173 },
    { x = 588, y = 189 },
    { x = 602, y = 199 },
    { x = 612, y = 210 },
    { x = 621, y = 220 },
    { x = 633, y = 232 },
    { x = 642, y = 242 },
    { x = 651, y = 251 },
    { x = 658, y = 258 },
    { x = 663, y = 262 },
    { x = 669, y = 271 },
    { x = 672, y = 278 },
    { x = 667, y = 287 },
    { x = 663, y = 300 },
    { x = 657, y = 315 },
    { x = 660, y = 334 },
    { x = 667, y = 351 },
    { x = 678, y = 363 },
    { x = 703, y = 373 },
    { x = 723, y = 374 },
    { x = 743, y = 363 },
    { x = 755, y = 357 },
    { x = 759, y = 367 },
    { x = 771, y = 378 },
    { x = 782, y = 386 },
    { x = 790, y = 399 },
    { x = 810, y = 419 },
    { x = 825, y = 435 },
    { x = 838, y = 449 },
    { x = 853, y = 464 },
    { x = 865, y = 483 },
    { x = 885, y = 498 },
    { x = 903, y = 518 },
    { x = 912, y = 529 },
    { x = 929, y = 542 },
    { x = 942, y = 561 },
    { x = 957, y = 570 },
    { x = 962, y = 585 },
    { x = 969, y = 591 },
    { x = 979, y = 599 },
    { x = 986, y = 609 },
    { x = 1001, y = 615 },
    { x = 1010, y = 617 },
    { x = 1021, y = 616 }
}

local ruta3 = {
    {x = 2, y = 671}, {x = 18, y = 671}, {x = 36, y = 671}, {x = 54, y = 672},
    {x = 71, y = 671}, {x = 95, y = 671}, {x = 123, y = 670}, {x = 142, y = 670},
    {x = 159, y = 670}, {x = 171, y = 670}, {x = 183, y = 671}, {x = 195, y = 669},
    {x = 205, y = 667}, {x = 214, y = 663}, {x = 226, y = 656}, {x = 235, y = 638},
    {x = 238, y = 620}, {x = 237, y = 601}, {x = 240, y = 580}, {x = 237, y = 553},
    {x = 240, y = 531}, {x = 243, y = 509}, {x = 239, y = 479}, {x = 232, y = 446},
    {x = 218, y = 437}, {x = 196, y = 424}, {x = 170, y = 425}, {x = 156, y = 432},
    {x = 142, y = 443}, {x = 133, y = 461}, {x = 131, y = 477}, {x = 131, y = 496},
    {x = 140, y = 509}, {x = 153, y = 524}, {x = 171, y = 531}, {x = 189, y = 532},
    {x = 207, y = 535}, {x = 227, y = 535}, {x = 240, y = 531}, {x = 267, y = 534},
    {x = 282, y = 535}, {x = 301, y = 536}, {x = 317, y = 537}, {x = 333, y = 538},
    {x = 357, y = 538}, {x = 383, y = 537}, {x = 408, y = 537}, {x = 436, y = 538},
    {x = 462, y = 538}, {x = 485, y = 533}, {x = 506, y = 533}, {x = 525, y = 531},
    {x = 531, y = 545}, {x = 542, y = 551}, {x = 552, y = 561}, {x = 561, y = 574},
    {x = 570, y = 584}, {x = 582, y = 594}, {x = 591, y = 605}, {x = 598, y = 611},
    {x = 607, y = 623}, {x = 621, y = 630}, {x = 632, y = 633}, {x = 644, y = 636},
    {x = 654, y = 637}, {x = 667, y = 638}, {x = 684, y = 638}, {x = 693, y = 638},
    {x = 705, y = 639}, {x = 720, y = 639}, {x = 735, y = 636}, {x = 755, y = 638},
    {x = 765, y = 640}, {x = 773, y = 639}, {x = 783, y = 639}, {x = 795, y = 638},
    {x = 807, y = 638}, {x = 817, y = 638}, {x = 831, y = 638}, {x = 845, y = 638},
    {x = 864, y = 637}, {x = 878, y = 638}, {x = 892, y = 638}, {x = 916, y = 637},
    {x = 934, y = 637}, {x = 952, y = 636}, {x = 969, y = 636}, {x = 984, y = 634},
    {x = 999, y = 635}, {x = 1009, y = 636}, {x = 1021, y = 635}
}


local ruta4 = {
    {x=375, y=2}, {x=375, y=12}, {x=375, y=21}, {x=377, y=29}, {x=377, y=39},
    {x=377, y=47}, {x=377, y=59}, {x=375, y=72}, {x=376, y=78}, {x=375, y=90},
    {x=375, y=99}, {x=377, y=108}, {x=376, y=115}, {x=375, y=121}, {x=375, y=129},
    {x=375, y=138}, {x=376, y=151}, {x=374, y=167}, {x=374, y=180}, {x=376, y=188},
    {x=375, y=199}, {x=372, y=216}, {x=373, y=226}, {x=375, y=243}, {x=372, y=260},
    {x=375, y=276}, {x=376, y=291}, {x=382, y=305}, {x=390, y=312}, {x=392, y=316},
    {x=398, y=321}, {x=405, y=327}, {x=411, y=329}, {x=419, y=331}, {x=429, y=330},
    {x=441, y=331}, {x=456, y=324}, {x=473, y=315}, {x=479, y=303}, {x=483, y=282},
    {x=486, y=268}, {x=480, y=252}, {x=477, y=243}, {x=472, y=235}, {x=461, y=228},
    {x=449, y=221}, {x=402, y=220}, {x=377, y=335},
    {x=377, y=345}, {x=375, y=360}, {x=378, y=378}, {x=378, y=393}, {x=378, y=410},
    {x=378, y=422}, {x=378, y=441}, {x=377, y=454}, {x=375, y=474}, {x=377, y=483},
    {x=375, y=511}, {x=364, y=515}, {x=243, y=512}, {x=240, y=537}
    , {x=238, y=559}, {x=237, y=572}, {x=237, y=586}, {x=238, y=600},
    {x=236, y=621}, {x=230, y=632},    
    {x=12, y=646}
}

local ruta5 = {
    {x=1022, y=241}, {x=1013, y=232}, {x=972, y=189},
    {x=963, y=177}, {x=948, y=162},
    {x=894, y=120}
    , {x=849, y=168}, {x=840, y=174}, {x=834, y=184}, {x=818, y=198},
    {x=807, y=210}, {x=794, y=223}, {x=778, y=237}, {x=771, y=246}, {x=762, y=255},
    {x=753, y=263}, {x=692, y=262},
    {x=675, y=276}, {x=667, y=288}, {x=662, y=306}, {x=657, y=317},
    {x=661, y=335}, {x=666, y=345}, {x=673, y=355}, {x=682, y=365}, {x=693, y=371},
    {x=710, y=373}, {x=726, y=372}, {x=742, y=363}, {x=756, y=360}, {x=772, y=381},
    {x=793, y=404}, {x=800, y=411}, {x=858, y=472}, {x=934, y=549}, {x=970, y=590},
    {x=991, y=612}, {x=1018, y=620}
}

local ruta6 = {
    {x=977, y=32}, {x=965, y=45}, {x=949, y=62}, {x=941, y=73}, {x=933, y=82},
    {x=923, y=90}, {x=913, y=104}, {x=899, y=114}, {x=887, y=128}, {x=873, y=139},
    {x=863, y=154}, {x=846, y=172}, {x=833, y=184}, {x=823, y=198}, {x=813, y=207},
    {x=802, y=221}, {x=789, y=237}, {x=779, y=245}, {x=769, y=255}, {x=762, y=265},
    {x=750, y=273}, {x=709, y=261}, {x=692, y=263},
    {x=681, y=267}, {x=670, y=282}, {x=663, y=298}, {x=658, y=315}, {x=660, y=330},
    {x=663, y=339}, {x=668, y=351}, {x=675, y=361}, {x=666, y=367}, {x=567, y=465},
    {x=544, y=499}, {x=531, y=514}, {x=524, y=519}, {x=531, y=525}, {x=591, y=590},
    {x=623, y=615}, {x=720, y=618}, {x=912, y=618}, {x=1001, y=618}, {x=1022, y=618}
}

local rutas = {
    ruta1,
    ruta2,
    ruta3,
    ruta4,
    ruta5,
    ruta6
}

local semaforoEnRojo = false
local semaforoEnVerde = false
local tiempoEsperaRojo = false


local options_sprite_1 = {
    width = 46,
    height = 50,
    numFrames = 3
}

local sprite_sheet_semaforo = graphics.newImageSheet("semaforo.png", options_sprite_1 )

local sequence = {
    {
        name = "verde",
        frames = {1},
        time = 5000,       -- 5 segundos
        count = 1,
        loopCount = 1,
        sheet = sprite_sheet_semaforo
    },
    {
        name = "amarillo",
        frames = {2},
        time = 2000,       -- 2 segundos
        count = 1,
        loopCount = 1,
        sheet = sprite_sheet_semaforo
    },
    {
        name = "rojo",
        frames = {3},
        time = 3000,       -- 3 segundos
        count = 1,
        loopCount = 1,
        sheet = sprite_sheet_semaforo
    }
}

local total = #sequence

local semaforo23 = display.newSprite(sprite_sheet_semaforo, sequence)
semaforo23.x =330
semaforo23.y=460



local totalAutos = 30

local function calcularAngulo(x1, y1, x2, y2)
    local dx = x2 - x1
    local dy = y2 - y1
    local anguloRadianes = math.atan2(dy, dx)
    local anguloGrados = math.deg(anguloRadianes)
    return anguloGrados
end
local enPausa = false

local botonPlay = display.newImageRect("botonPlay.png", CW/12, CH/12)
botonPlay.anchorX = 0.5
botonPlay.anchorY = 0.5
botonPlay.x=90
botonPlay.y=300

local botonPausa = display.newImageRect("botonPausa.png", CW/15+10, CH/15)
botonPausa.anchorX = 0.5
botonPausa.anchorY = 0.5
botonPausa.x=180
botonPausa.y=300

local autosDetenidos = {}

local function moverAuto(auto, ruta, index)

    if enPausa then
        if not autosDetenidos[auto] then
            autosDetenidos[auto] = {
                ruta = ruta,
                index = index
            }
        end
        return
    end

    local puntoActual = ruta[index]
     if not puntoActual then
        return
    end
    local siguienteIndex = index + 1
     
    if siguienteIndex > #ruta then
            auto.isVisible = false
            timer.performWithDelay(170, function()
                auto.x = ruta[1].x
                auto.y = ruta[1].y
                auto.rotation = 0
                auto.isVisible = true
                moverAuto(auto, ruta, 1)
            end)
            return
    end


    local siguientePunto = ruta[siguienteIndex]

    if not siguientePunto or not siguientePunto.x or not siguientePunto.y then
        print("Error: siguientePunto inválido en el índice", siguienteIndex)
        timer.performWithDelay(3500, function()
            moverAuto(auto, ruta, index)
        end)
        return
    end


    local dx = siguientePunto.x - puntoActual.x
    local dy = siguientePunto.y - puntoActual.y
    local distancia = math.sqrt(dx * dx + dy * dy)
    local velocidad = 150
    local tiempo = distancia / velocidad * 1000

    local angulo = calcularAngulo(puntoActual.x, puntoActual.y, siguientePunto.x, siguientePunto.y)
    transition.to(auto, {time = 100, rotation = angulo})

    -- Coordenadas del semáforo
    local semaforoX = 330
    local semaforoY = 460
    local margen = 90

    -- Detectar si el auto está cerca del semáforo
    local cercaDelSemaforo = 
        math.abs(siguientePunto.x - semaforoX) < margen and
        math.abs(siguientePunto.y - semaforoY) < margen

    local function continuarMovimiento()
        transition.to(auto, {
            time = tiempo,
            x = siguientePunto.x,
            y = siguientePunto.y,
            onComplete = function()
                moverAuto(auto, ruta, siguienteIndex)
            end
        })
    end

    if cercaDelSemaforo and semaforoEnRojo and not auto.acabaDeReanudar then
         local chance = math.random(1, 100)
            if chance <= 20 then
                print("¡Auto se pasa en rojo!")
                -- Mostrar texto de advertencia sobre el auto
                local alertaTexto = display.newText({
                    text = "¡Infracción!",
                    x = auto.x,
                    y = auto.y - 40,
                    font = native.systemFontBold,
                    fontSize = 20
                })
                alertaTexto:setFillColor(1, 0, 0) -- Color rojo

                transition.to(alertaTexto, {
                    time = 1500,
                    alpha = 0,
                    onComplete = function()
                        alertaTexto:removeSelf()
                        alertaTexto = nil
                    end
                })
                continuarMovimiento() -- El auto continúa su camino
            else
            -- Detener auto y guardarlo en la lista de detenidos si no está ya en ella
                if not autosDetenidos[auto] then
                    transition.cancel(auto)
                    autosDetenidos[auto] = {
                        ruta = ruta,
                        index = index
                    }
                end
                return  -- No continuar movimiento mientras está en rojo
            end
    else
            -- Verifica si hay otro auto detenido delante
        for otroAuto, datos in pairs(autosDetenidos) do
            if not otroAuto or not otroAuto.x or not otroAuto.y then
                --print("Removiendo auto inválido de autosDetenidos")
                autosDetenidos[otroAuto] = nil
            else
                local distanciaEntreAutos = math.sqrt((siguientePunto.x - otroAuto.x)^2 + (siguientePunto.y - otroAuto.y)^2)
                if distanciaEntreAutos < 50 then
                    if not autosDetenidos[auto] then
                        transition.cancel(auto)
                        autosDetenidos[auto] = {
                            ruta = ruta,
                            index = index
                        }
                    end
                    return
                end
            end
        end

        continuarMovimiento()
    end

end

local function reanudarAutos()
    local autosAReanudar = {}

    for auto, datos in pairs(autosDetenidos) do
        autosAReanudar[auto] = datos
    end

    autosDetenidos = {}  -- Limpiamos, pero ya guardamos a los que reanudaremos

    for auto, datos in pairs(autosAReanudar) do
        if datos.index > #datos.ruta then
            datos.index = 1
        end

        auto.acabaDeReanudar = true
        timer.performWithDelay(100, function()
            moverAuto(auto, datos.ruta, datos.index)
        end)
    end
end


local current=1
local function cambiarSemaforo()
    semaforo23:setSequence(sequence[current].name)
    semaforo23:play()

    if sequence[current].name == "rojo" then
    semaforoEnRojo = true
    else
        semaforoEnRojo = false
    end

    if not semaforoEnRojo then
        reanudarAutos()
    end

    local duracion = sequence[current].time
    current = current % total + 1
    timer.performWithDelay(duracion, cambiarSemaforo)
end
cambiarSemaforo()


local autosActivos = {}

local function manejarColision(event)
    if event.phase == "began" then
        local obj1 = event.object1
        local obj2 = event.object2

        -- Verificar que ambos objetos sean autos
        if obj1.myName == "auto" and obj2.myName == "auto" then
            local colX = (obj1.x + obj2.x) / 2
            local colY = (obj1.y + obj2.y) / 2
        
        -- Función para verificar si el auto ha recorrido al menos 5 puntos en su ruta
        local function haRecorridoSuficiente(obj)
            if not obj.rutaAsignada or #obj.rutaAsignada == 0 then
                print("No se encontró la ruta para el auto. Ruta no válida.")
                return false
            end

            local puntosRecorridos = 0
            local ruta = obj.rutaAsignada  -- Accede a la ruta asignada
            local margenDeTolerancia = 15  -- Margen de tolerancia para la comparación

            -- Recorrer la ruta y verificar si el auto ha alcanzado los puntos
            for i = 1, #ruta - 1 do
                local puntoActual = ruta[i]
                local siguientePunto = ruta[i + 1]

                -- Calcular la distancia entre el auto y el punto actual de la ruta
                local distanciaX = obj.x - puntoActual.x
                local distanciaY = obj.y - puntoActual.y
                local distancia = math.sqrt(distanciaX^2 + distanciaY^2)

                -- Si el auto está suficientemente cerca del punto actual, consideramos que ha avanzado
                if distancia <= margenDeTolerancia then
                    puntosRecorridos = puntosRecorridos + 1
                end
        end
    return puntosRecorridos >= 0
end
        if not haRecorridoSuficiente(obj1) or not haRecorridoSuficiente(obj2) then
            print("Un auto no ha recorrido suficientes puntos en su ruta. Choque ignorado.")
            return
        end

            -- Si ambos autos han recorrido suficientes puntos, procesar el choque
            --print("Choque registrado en: (" .. math.floor(colX) .. ", " .. math.floor(colY) .. ")")

            transition.cancel(obj1)
            transition.cancel(obj2)

            -- Remover de autosActivos
            for i = #autosActivos, 1, -1 do
                if autosActivos[i] == obj1 or autosActivos[i] == obj2 then
                    table.remove(autosActivos, i)
                end
            end

            local grupoExplosion = display.newGroup()

            -- Crear imagen de explosión
            local explosion = display.newImageRect("choque.png", 40, 40)
            explosion.x = colX
            explosion.y = colY
            grupoZebra:toFront()
            grupoExplosion:insert(explosion)

            timer.performWithDelay(1000, function()
                if grupoExplosion and grupoExplosion.removeSelf then
                    grupoExplosion:removeSelf()
                    grupoExplosion = nil
                end
            end)


            -- Eliminar autos después del choque
            timer.performWithDelay(1, function()
                if obj1 and obj1.removeSelf then
                    if obj1._physicsBody then
                        physics.removeBody(obj1)
                    end
                    obj1:removeSelf()
                    obj1 = nil
                end

                if obj2 and obj2.removeSelf then
                    if obj2._physicsBody then
                        physics.removeBody(obj2)
                    end
                    obj2:removeSelf()
                    obj2 = nil
                end
            end)
        end
    end
end


local function regenerarAuto()
    if semaforoEnRojo then
        return
    end

    for i = 1, 5 do
        local ruta = rutas[math.random(1, #rutas)]
        local puntoInicio = ruta[1]
        local numeroAuto = math.random(1, 8)
        local nombreImagen = "auto" .. numeroAuto .. ".png"
        local nuevoAuto = display.newImageRect(nombreImagen, CW/25, CH/25)
        nuevoAuto.anchorX = 0.5
        nuevoAuto.anchorY = 0.5

        local radioSeparacion = 20
        local angulo = math.random() * 2 * math.pi
        local offsetX = math.cos(angulo) * radioSeparacion
        local offsetY = math.sin(angulo) * radioSeparacion

        nuevoAuto.x = puntoInicio.x + offsetX
        nuevoAuto.y = puntoInicio.y + offsetY
        nuevoAuto.isVisible = false
        nuevoAuto.myName = "auto"
        nuevoAuto.rutaAsignada = ruta
        nuevoAuto.puedeColisionar = false


        table.insert(autosActivos, nuevoAuto)

        timer.performWithDelay(1000, function()
            nuevoAuto.isVisible = true
            physics.addBody(nuevoAuto, "dynamic", {radius = 20})
            moverAuto(nuevoAuto, ruta, 1)
        end)
    end
end


-- Inicializar contador para cada ruta
local autosPorRuta = {}
for i = 1, #rutas do
    autosPorRuta[i] = 0
end

-- Activar el listener de colisiones una sola vez tras 1 segundos
timer.performWithDelay(1500, function()
    Runtime:addEventListener("collision", manejarColision)
end)

timer.performWithDelay(500, function()
    if #autosActivos < 30 then
        regenerarAuto()
    end
end, 0)


local autoIndex = 1

-- Crear autos iniciales para cada ruta (máximo 5)
for i = 1, #rutas do
    local rutaAsignada = rutas[i]
    print("Ruta " .. i .. " tiene " .. tostring(#rutaAsignada) .. " puntos")

    for j = 1, 10 do
        local puntoInicio = rutaAsignada[1]

        -- Distribución radial para evitar solapamientos
        local radioSeparacion = 20
        local angulo = (2 * math.pi / 5) * j
        local offsetX = math.cos(angulo) * radioSeparacion
        local offsetY = math.sin(angulo) * radioSeparacion

        local posX = puntoInicio.x + offsetX
        local posY = puntoInicio.y + offsetY

        local numeroAuto = math.random(1, 8)
        local nombreImagen = "auto" .. numeroAuto .. ".png"

        local auto = display.newImageRect(nombreImagen, CW/25, CH/25)
        auto.anchorX = 0.5
        auto.anchorY = 0.5
        auto.x = posX
        auto.y = posY
        auto.isVisible = false
        auto.myName = "auto"
        auto.rutaAsignada = rutaAsignada
        auto.puedeColisionar = false

        autosPorRuta[i] = autosPorRuta[i] + 1

        table.insert(autosActivos, auto)

        local delayIngreso = j * 1000 + math.random(0, 500)
        local rutaCopiada = rutaAsignada

        timer.performWithDelay(delayIngreso, function()
            auto.isVisible = true
            physics.addBody(auto, "dynamic", {radius = 20})
            moverAuto(auto, rutaCopiada, 2)
        end)

        autoIndex = autoIndex + 1
    end
end

-- Botón Pausa
botonPausa:addEventListener("tap", function()
    enPausa = true
    -- Cancelar todas las transiciones actuales
    for i = 1, #autosActivos do
       transition.pause(autosActivos[i])
    end
    print("Animación pausada")
end)

botonPlay:addEventListener("tap", function()
    enPausa = false
    for i = 1, #autosActivos do
        transition.resume(autosActivos[i])
    end

    -- Además reanuda los que estaban completamente detenidos
    for auto, datos in pairs(autosDetenidos) do
        moverAuto(auto, datos.ruta, datos.index)
    end
    autosDetenidos = {}
end)



