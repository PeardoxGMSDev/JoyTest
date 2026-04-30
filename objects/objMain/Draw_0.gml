for(var i=0, n = array_length(models); i<n; i++) {
	bbmod_material_reset();
	new BBMOD_Matrix()
	.RotateZ(180)
	.RotateX(270)
	.Scale(100, 100, 100)
	.Translate(x, y, 0)
	.ApplyWorld();
	models[i].submit();
	new BBMOD_Matrix().ApplyWorld();
	bbmod_material_reset();
}