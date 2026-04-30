for(var i=0, n = array_length(models); i<n; i++) {
	bbmod_material_reset();
	models[i].submit();
	bbmod_material_reset();
}