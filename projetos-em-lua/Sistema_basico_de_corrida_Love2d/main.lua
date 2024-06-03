function love.config()
    love.title = "Jogo em Lua" --Titulo da janela
end

function love.load()
    -- Variável player, posição (x,y) e velocidade (speed)
    player = {}
    player.x = 200
    player.y = 400
    player.speed = 2
end

function love.update(dt)
    -- Quando botão é apertado, o jogador(player) Move a uma coordenada
   if love.keyboard.isDown("w") then   
        player.y = player.y - player.speed
    end
    if love.keyboard.isDown("a") then
        player.x = player.x - player.speed
    end
    if love.keyboard.isDown("s") then 
        player.y = player.y + player.speed
    end
    if love.keyboard.isDown("d") then
        player.x = player.x + player.speed
    end
end


function love.keypressed( key )   --Se o botão é Pressionado, Mudar a velocidade do jogador(player)
    if key == "space" then
    player.speed = 5
    end
end
function love.keyreleased( key )  --Se o botão é Soltado, Mudar a velocidade do jogador(player)
    if key == "space" then
    player.speed = 3   
    end
end


function love.draw() -- Desenha um retangulo, Com as variáveis player.x e player.y como forma de se movimentar.
    love.graphics.rectangle("fill", player.x, player.y, 100, 40)


end
