extends Node2D

var path = load("res://scenes/detection_square.tscn").instantiate()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_area_2d_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		add_child(path)
		global_position += Vector2(32,0)
