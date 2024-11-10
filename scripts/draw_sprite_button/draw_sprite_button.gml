function draw_sprite_button(x_percent, y_percent, sprite) {
    var btn_x = browser_width * x_percent;
    var btn_y = browser_height * y_percent;
    var btn_width = sprite_get_width(sprite) * (browser_width / 1920);
    var btn_height = sprite_get_width(sprite) * (browser_height / 1080);
    
    draw_sprite_ext(sprite, 0, btn_x, btn_y, browser_width / 1920, browser_height / 1080, 0, -1, 1);

    if (device_mouse_check_button(0, mb_left) && 
        point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), btn_x, btn_y, btn_x + btn_width, btn_y + btn_height)) {
        return true;
    }
    
    return false;
}