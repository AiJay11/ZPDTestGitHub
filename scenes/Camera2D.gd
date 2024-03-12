extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var camera_move_speed = 200
	var input = Vector2.ZERO
	input.x = Input.get_axis("move_camera_left","move_camera_right")
	input.y =Input.get_axis("move_camera_up","move_camera_down")
	position += input * camera_move_speed * delta
