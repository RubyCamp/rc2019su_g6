require 'dxruby'

map = Image.load('shimane3.png')
chara = Image.load('man.png')
x = 0
y = 0

Window.loop do
    x = x + Input.x
    y = y + Input.y

    if x < -112
        x = -112
    end

    if x > 515
        x = 515
    end

    if y > 235
        y = 235
    end
    
    Window.draw(0.25, 0.25, map)
    Window.draw_scale(x, y, chara, 0.1, 0.1)
    #if y < -207
        #scene.move_to(:north_west)

end
