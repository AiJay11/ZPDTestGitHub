extends Node2D

signal move_here(where)
#var path = load("res://scenes/detection_square.tscn").instantiate()
#var deez = [$d1,$d2,$d3,$d4,$d5,$d6,$d7,$d8]
# Called when the node enters the scene tree for the first time.
func _ready():
	$d1.connect("move_here",move)
	$d2.connect("move_here",move)
	$d3.connect("move_here",move)
	$d4.connect("move_here",move)
	$d5.connect("move_here",move)
	$d6.connect("move_here",move)
	$d7.connect("move_here",move)
	$d8.connect("move_here",move)
	print("alive")
	#for x in deez:
		#x.connect("move_here",move)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func show_deez():
	$d1.set_visible(true)
	$d2.set_visible(true)
	$d3.set_visible(true)
	$d4.set_visible(true)
	$d5.set_visible(true)
	$d6.set_visible(true)
	$d7.set_visible(true)
	$d8.set_visible(true)

	#for x in deez:
		#x.set_visible(true)

func hide_deez():
	$d1.set_visible(false)
	$d2.set_visible(false)
	$d3.set_visible(false)
	$d4.set_visible(false)
	$d5.set_visible(false)
	$d6.set_visible(false)
	$d7.set_visible(false)
	$d8.set_visible(false)

func _on_area_2d_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_just_pressed("click"):
		if $d1.visible == true:
			hide_deez()
		else:
			show_deez()

func move(cords):
	position += cords*2
	hide_deez()
