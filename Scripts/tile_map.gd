extends TileMap

var GrisizeX = 20
var GrisizeY = 10
var dic = {}

func _ready():
	if get_used_cells(0) == []:
		
		#print("halo")
		for x in GrisizeX: #generates tiles and asigns each with a dictonary
			for y in GrisizeY:
				dic[str(Vector2(x,y))] = {
					"Type": "base_tile",
					"Location": Vector2(x,y)
				}
				set_cell(0,Vector2(x,y),0,Vector2i(randi()%2,randi()%2),0)
	else:
		#print("ben")
		recreate_map()
			
func _process(_delta):
	var tile = local_to_map(get_global_mouse_position())
	
	for x in GrisizeX:
		for y in GrisizeY:
			erase_cell(2,Vector2(x,y))
	
	if dic.has(str(tile)):
		set_cell(2,tile,2,Vector2i(0,0),0)
		if Input.is_action_just_pressed("click"):
			set_cell(1,tile,0,Vector2i(2,1),0)
			
#func tiles_to_dic(type,atlas): # jāizdomā veids kā padarīt modulāru
	#for tile in type:
		#dic[str(tile)] = {
					#"Type": str(type),
					#"Location": tile
				#}
		#set_cell(0,tile,0,atlas,0)
	
func recreate_map():
	var grass = get_used_cells_by_id(0,0,Vector2i(0,0),0)
	var water = get_used_cells_by_id(0,0,Vector2i(1,0),0)
	var mountain = get_used_cells_by_id(0,0,Vector2i(0,1),0)
	var forrest = get_used_cells_by_id(0,0,Vector2i(1,1),0)
	for tile in grass:
		dic[str(tile)] = {
					"Type": "grass",
					"Location": tile
				}
		set_cell(0,tile,0,Vector2i(0,0),0)
	for tile in water:
		dic[str(tile)] = {
				"Type": "water",
				"Location": tile
			}
		set_cell(0,tile,0,Vector2i(1,0),0)
	for tile in mountain:
		dic[str(tile)] = {
				"Type": "mountain",
				"Location": tile
			}
		set_cell(0,tile,0,Vector2i(0,1),0)
	for tile in forrest:
		dic[str(tile)] = {
				"Type": "forrest",
				"Location": tile
			}
		set_cell(0,tile,0,Vector2i(1,1),0)
