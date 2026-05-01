// If your window is resizable, you can update the camera's aspect ratio
// here too:
camera.AspectRatio = window_get_width() / window_get_height();

// Do not forget to call the camera's update method
camera.update(delta_time);