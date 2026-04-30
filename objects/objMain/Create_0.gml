function bbmc(r, g, b) {
	return new BBMOD_Color(r * 255, g * 255, b * 255);
}

game_set_speed(display_get_frequency(), gamespeed_fps);

models = array_create(0);
var bbm = new BBMOD_Model("models/Joystick.bbmod");

var m0 = BBMOD_MATERIAL_DEFAULT.clone();
m0.set_base_opacity(bbmc(0.906, 0.906, 0.906));
// bbm.set_material("Base", m0);
bbm.Materials[0] = m0;

var m1 = BBMOD_MATERIAL_DEFAULT.clone();
m1.set_base_opacity(bbmc(0.250, 0.250, 0.250));
bbm.Materials[1] = m1;

var m2 = BBMOD_MATERIAL_DEFAULT.clone();
m2.set_base_opacity(bbmc(0.345, 0.470, 0.907));
bbm.Materials[2] = m2;

bbm.freeze();
array_push(models, bbm);