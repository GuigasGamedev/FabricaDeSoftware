cam = view_camera[0];
cam_x = camera_get_view_x(cam);   // posição original (fixa)
cam_y = camera_get_view_y(cam);
shake = 0;                        // intensidade atual em pixels
shake_decay = 0.5;                // quanto a intensidade cai por frame