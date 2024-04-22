extends Area2D

signal move_here(where)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _input_event(_viewport, _event, _shape_idx):
	if Input.is_action_just_pressed("click"):
		emit_signal("move_here",position)
		print("clicked")
