extends Control


@onready var MASTERVOLUME_BUS_ID = AudioServer.get_bus_index("MasterVolume")
#@onready var full_screen_check_box =$FullScreen_CheckBox


func _on_full_screen_check_box_toggled(toggled_on):
	if toggled_on:
		get_window().set_mode(Window.MODE_FULLSCREEN)
	else: 
		get_window().set_mode(Window.MODE_WINDOWED)


func _on_v_sync_check_box_pressed():
	pass

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://scenes/Menu.tscn")	


func _on_reset_button_pressed():
	pass

