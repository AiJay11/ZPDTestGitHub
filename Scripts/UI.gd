extends Control

signal placable_selected(num)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_quit_pressed():
	get_tree().quit()

func _on_dude_pressed():
	emit_signal("placable_selected",1)

func _on_menu_pressed():
	get_tree().change_scene_to_file("res://scenes/Menu.tscn")

func _on_options_pressed():
	get_tree().change_scene_to_file("res://scenes/Options.tscn")
