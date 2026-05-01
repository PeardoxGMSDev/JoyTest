draw_text(20, 20,"FPS = " + string(game_get_speed(gamespeed_fps)));
draw_text(20, 40,"Pos = (" + string(x) + ", " + string(y) + ", " + string(z) + ")");
draw_text(20, 60,"Cam = (" + string(objCamera.camera.Position.X) + "," + string(objCamera.camera.Position.Y) + "," + string(objCamera.camera.Position.Z) + ")");
draw_text(20, 80,"Up  = (" + string(objCamera.camera.Up.X) + "," + string(objCamera.camera.Up.Y) + "," + string(objCamera.camera.Up.Z) + ")");
draw_text(20,100,"Tgt = (" + string(objCamera.camera.Target.X) + "," + string(objCamera.camera.Target.Y) + "," + string(objCamera.camera.Target.Z) + ")");