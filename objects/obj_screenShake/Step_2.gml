if (shake > 0) {
    var ox = random_range(-shake, shake);
    var oy = random_range(-shake, shake);
    camera_set_view_pos(cam, cam_x + ox, cam_y + oy);
    shake = max(0, shake - shake_decay);
} else {
    camera_set_view_pos(cam, cam_x, cam_y); // volta exatamente ao lugar original
}