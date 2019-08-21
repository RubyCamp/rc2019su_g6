require "dxruby"

#module Opening
#    class Director < DirectorBase
#        def prepare_scene
#            end
#end

Window.width = 900
Window.height = 650

title = Font.new(64)
small_message = Font.new(25)

Window.loop do
    Window.draw_font(250, 270, "So-ten_Quest", title)
    Window.draw_font(345, 340, "press SPACE to continue", small_message, color:[255, 255, 0, 255])

    if Input.key_push?(K_SPACE) then
        Break #本来であればここでマップ(サンレイク)への遷移を行う
    end

    if Input.key_push?(K_ESCAPE) then # escキーを押すと終了する
        Break
    end
end