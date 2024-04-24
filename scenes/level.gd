extends Node2D

var selected_placable = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_ui_placable_selected(num):
	selected_placable = num

