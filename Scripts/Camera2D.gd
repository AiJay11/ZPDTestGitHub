extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#camera movement on x and y axis
	var camera_move_speed = 200 
	var input = Vector2.ZERO
	input.x = Input.get_axis("move_camera_left","move_camera_right")
	input.y =Input.get_axis("move_camera_up","move_camera_down")
	position += input * camera_move_speed * delta
	
	var camera_zoom_speed = 2
	var min_zoom = 0.5
	var max_zoom = 10
	var zoom_direction 
	zoom_direction = Input.get_axis("zoom_out","zoom_in")
	var zoom_change = camera_zoom_speed * zoom_direction * delta 
	var zoom_actual = clamp(zoom + Vector2(zoom_change,zoom_change),Vector2(min_zoom,min_zoom),Vector2(max_zoom,max_zoom))
	zoom = zoom_actual
	camera_move_speed /= zoom_actual.x
	
