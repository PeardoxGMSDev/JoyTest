game_set_speed(display_get_frequency(), gamespeed_fps);

models = array_create(0);
var bbm = new BBMOD_Model("models/Joystick.bbmod");
bbm.freeze();
array_push(models, bbm);