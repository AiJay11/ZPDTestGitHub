extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/StartButton.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_button_pressed():
	get_tree().change.scene("res://menu.tscn")


func _on_options_button_pressed():
	var options = load("res://Mnus/Options.tscn").instance()
	get_tree().current_scene.add_child(options)
#merge test

func _on_quit_button_pressed():
	get_tree().quit()
