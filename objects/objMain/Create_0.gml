function bbmc(r, g, b) {
	return new BBMOD_Color(r * 255, g * 255, b * 255);
}

game_set_speed(display_get_frequency(), gamespeed_fps);
z = 0;

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
meshCount = array_length(bbm.Meshes);
bbox = undefined;
center = undefined;
if(meshCount > 0) {
	var bboxmax = new BBMOD_Vec3(-infinity,-infinity,-infinity);
	var bboxmin = new BBMOD_Vec3(infinity,infinity,infinity);
	bbox = new BBMOD_Vec3(0,0,0);
	center = new BBMOD_Vec3(0,0,0);
	for(var i=0; i<meshCount; i++) {
		if(!is_undefined(bbm.Meshes[i].BboxMin) && !is_undefined(bbm.Meshes[i].BboxMax)) {

			if(bboxmax.X < bbm.Meshes[i].BboxMax.X) {
				bboxmax.X = bbm.Meshes[i].BboxMax.X;
			}
			if(bboxmax.Y < bbm.Meshes[i].BboxMax.Y) {
				bboxmax.Y = bbm.Meshes[i].BboxMax.Y;
			}
			if(bboxmax.Z < bbm.Meshes[i].BboxMax.Z) {
				bboxmax.Z = bbm.Meshes[i].BboxMax.Z;
			}
			
			if(bboxmin.X > bbm.Meshes[i].BboxMin.X) {
				bboxmin.X = bbm.Meshes[i].BboxMin.X;
			}
			if(bboxmin.Y > bbm.Meshes[i].BboxMin.Y) {
				bboxmin.Y = bbm.Meshes[i].BboxMin.Y;
			}
			if(bboxmin.Z > bbm.Meshes[i].BboxMin.Z) {
				bboxmin.Z = bbm.Meshes[i].BboxMin.Z;
			}
			
		}
	}
	
	show_debug_message("bboxmin = " + string(bboxmin));
	show_debug_message("bboxmax = " + string(bboxmax));
	
	bbox.X = (bboxmax.X - bboxmin.X);
	bbox.Y = (bboxmax.Y - bboxmin.Y);
	bbox.Z = (bboxmax.Z - bboxmin.Z);
	center.X = (bboxmax.X + bboxmin.X) / 2;
	center.Y = (bboxmax.Y + bboxmin.Y) / 2;
	center.Z = (bboxmax.Z + bboxmin.Z) / 2;
	show_debug_message("center = " + string(center));
}

array_push(models, bbm);

if(!is_undefined(center)) {
	x = center.X;
	y = center.Y;
	z = center.Z;
} else {
	x = 0;
	y = 176;
	z = 586;
}