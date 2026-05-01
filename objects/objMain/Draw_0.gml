for(var i=0, n = array_length(models); i<n; i++) {
	bbmod_material_reset();
	new BBMOD_Matrix()
	.RotateZ(0)
	.RotateY(180)
	.RotateX(90)
	// .Scale(100, 100, 100)
	.Translate(x/100, y/100, z/100)
	.ApplyWorld();
	models[i].submit();
	new BBMOD_Matrix().ApplyWorld();
	bbmod_material_reset();
}