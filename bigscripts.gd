extends Node

var default_spawn_pos:Vector2 = Vector2(0,0)
var spawn_pos:Vector2 = Vector2(0,0)

#t = title
#d = description
#m = map
#s = spawnpoint
var map_data:Dictionary = {
		"t":"Default Map",
		"s":[0,0],
		"m":
		[{"p":[0,5],"i":"0"},#BLOCKS
		{"p":[1,5],"i":"0"},
		{"p":[2,5],"i":"0"},
		{"p":[3,5],"i":"0"},
		{"p":[4,5],"i":"0"},
		{"p":[5,5],"i":"0"},
		{"p":[6,5],"i":"0"},
		
		{"p":[4,4],"i":"1"},#SPIKES
		{"p":[5,4],"i":"1"},
		]
		}

var editor_load_map:bool = false

var block_id_to_scene:Dictionary = {
	"0":"res://source/block_scenes/default_block/block.tscn",
	"1":"res://source/block_scenes/spike/block.tscn",
	"2":"res://source/block_scenes/checkpoint/block.tscn",
	"3":"res://source/block_scenes/jump_pad/block.tscn",
}

var editor_mode = false

var map_change = false

func grab_map(folder, spawn=Vector2(0,0)):
	var map_dict:Dictionary = {}
	
	#t = title
	#m = map
	#s = spawn_pos
	
	map_dict["t"] = "demo"
	map_dict["s"] = [spawn.x,spawn.y]
	map_dict["m"] = []
	
	for child in folder.get_children():
		var child_dat = child.get_dat()
		map_dict["m"].append(child_dat)
	
	#COMPRESS
	var compressed_map:String = ""
	var quotes_open = false
	for i in str(map_dict):
		if i == '"':
			if quotes_open:quotes_open=false
			elif not quotes_open:quotes_open=true
		
		if not quotes_open and i == " ":
			continue
		
		compressed_map += i
	
	return compressed_map

func load_map(map_code:Array,folder:Node2D):
	for block_dat in map_code:
		var new_block = load(block_id_to_scene[str(block_dat["i"])]).instantiate()
		new_block.set_dat(block_dat)
		
		folder.add_child(new_block)

func change_map(data:Dictionary):
	map_data = data
	spawn_pos = Vector2(data["s"][0],data["s"][1])*16
	default_spawn_pos = spawn_pos
	map_change = true

func has_map_changed():
	if map_change:
		map_change = false
		return true
	return false

func _process(delta):
	if Input.is_action_just_pressed("menu"):
		get_tree().change_scene_to_file("res://main_menu/main_menu.tscn")
