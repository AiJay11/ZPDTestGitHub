extends TileMap

var GrisizeX = 20 #tiek lietots random kartes izveidē
var GrisizeY = 15 #tiek lietots random kartes izveidē
var dic = {} #tiek lietots abos kartes izveides gadījumos

func _ready():
	if get_used_cells(0) == []:
		#print("halo")
		for x in GrisizeX: #generates tiles and asigns each with a dictonary
			for y in GrisizeY:
				dic[str(Vector2(x,y))] = {
					"Type": "random_tile",
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
			#set_cell(1,tile,0,Vector2i(2,1),0)
			erase_cell(1,tile)
			
func tiles_to_dic(type,source,atlas,location): 
	dic[str(location)] = {
				"Type": type,
				"Location": location
				}
	set_cell(0,location,source,atlas,0)
	
func recreate_map():
	var grass = get_used_cells_by_id(0,1,Vector2i(0,0),0)
	var water = get_used_cells_by_id(0,1,Vector2i(3,0),0)
	var mountain = get_used_cells_by_id(0,1,Vector2i(2,0),0)
	var forrest = get_used_cells_by_id(0,1,Vector2i(1,0),0)
	for tile in grass:
		tiles_to_dic("grass",1,Vector2i(0,0),tile)
	for tile in water:
		tiles_to_dic("water",1,Vector2i(3,0),tile)
	for tile in mountain:
		tiles_to_dic("mountain",1,Vector2i(2,0),tile)
	for tile in forrest:
		tiles_to_dic("forrest",1,Vector2i(1,0),tile)

