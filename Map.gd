extends TileMap

var GrisizeX = 20
var GrisizeY = 10
var dic = {}

func _ready():
	
	for x in GrisizeX:
		for y in GrisizeY:
			dic[str(Vector2(x,y))] = {
				"Type": "grass"
			}
			set_cell(0,Vector2(x,y),2,Vector2i(randi()%2,randi()%2),0)
			
func _process(_delta):
	var tile = local_to_map(get_global_mouse_position())
	
	for x in GrisizeX:
		for y in GrisizeY:
			erase_cell(1,Vector2(x,y))
	
	if dic.has(str(tile)):
		set_cell(1,tile,3,Vector2i(0,0),0)