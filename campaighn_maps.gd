extends Node

const default_map:Dictionary = {
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
		
		{"p":[6,4],"i":"2","d":{"w":true}}#WIN FLAG
		]
}

const tutorial:Dictionary = {
	"t":"Tutorial","s":[-11,-3],"m":[{"p":[0,5],"i":0},{"p":[1,5],"i":0},{"p":[2,5],"i":0},{"p":[3,5],"i":0},{"p":[4,5],"i":0},{"p":[5,5],"i":0},{"p":[6,5],"i":0},{"p":[-1,5],"i":0},{"p":[-3,4],"i":0},{"p":[-4,4],"i":0},{"p":[-5,3],"i":0},{"p":[-5,2],"i":0},{"p":[-6,2],"i":0},{"p":[-6,1],"i":0},{"p":[-7,1],"i":0},{"p":[-8,0],"i":0},{"p":[-8,-1],"i":0},{"p":[-9,-2],"i":0},{"p":[-8,-2],"i":0},{"p":[-7,-2],"i":0},{"p":[-6,-2],"i":0},{"p":[-5,-2],"i":0},{"p":[-10,-2],"i":0},{"p":[-11,-2],"i":0},{"p":[-12,-2],"i":0},{"p":[-13,-2],"i":0},{"p":[-14,-2],"i":0},{"p":[-14,-3],"i":0},{"p":[-14,-4],"i":0},{"p":[-14,-5],"i":0},{"p":[-14,-6],"i":0},{"p":[-14,-7],"i":0},{"p":[-14,-8],"i":0},{"p":[-13,-9],"i":0},{"p":[-12,-10],"i":0},{"p":[-10,-8],"i":0},{"p":[-9,-7],"i":0},{"p":[-10,-7],"i":0},{"p":[-10,-6],"i":0},{"p":[-10,-5],"i":0},{"p":[-10,-4],"i":0},{"p":[-13,-7],"i":0},{"p":[-12,-7],"i":0},{"p":[-11,-7],"i":0},{"p":[-13,-4],"i":0},{"p":[-12,-4],"i":0},{"p":[-4,-1],"i":0},{"p":[-3,-1],"i":0},{"p":[-3,0],"i":0},{"p":[-3,1],"i":0},{"p":[-2,1],"i":0},{"p":[-2,2],"i":0},{"p":[-2,3],"i":0},{"p":[-1,3],"i":0},{"p":[-1,4],"i":0},{"p":[-2,5],"i":0},{"p":[7,5],"i":0},{"p":[8,5],"i":0},{"p":[9,5],"i":0},{"p":[10,5],"i":0},{"p":[11,5],"i":0},{"p":[12,5],"i":0},{"p":[13,5],"i":0},{"p":[14,5],"i":0},{"p":[15,5],"i":0},{"p":[16,5],"i":0},{"p":[17,5],"i":0},{"p":[18,5],"i":0},{"p":[19,5],"i":0},{"p":[20,5],"i":0},{"p":[4,4],"i":0},{"p":[4,3],"i":0},{"p":[4,2],"i":0},{"p":[4,1],"i":0},{"p":[3,2],"i":0},{"p":[2,2],"i":0},{"p":[1,1],"i":0},{"p":[3,0],"i":0},{"p":[2,1],"i":0},{"p":[1,0],"i":0},{"p":[2,-1],"i":0},{"p":[4,-1],"i":0},{"p":[5,0],"i":0},{"p":[5,2],"i":0},{"p":[6,2],"i":0},{"p":[6,1],"i":0},{"p":[7,1],"i":0},{"p":[7,0],"i":0},{"p":[6,-1],"i":0},{"p":[5,-2],"i":0},{"p":[4,-2],"i":0},{"p":[3,-2],"i":0},{"p":[11,4],"i":0},{"p":[11,3],"i":0},{"p":[11,2],"i":0},{"p":[9,2],"i":0},{"p":[10,3],"i":0},{"p":[10,1],"i":0},{"p":[9,1],"i":0},{"p":[10,0],"i":0},{"p":[11,-1],"i":0},{"p":[11,1],"i":0},{"p":[12,0],"i":0},{"p":[12,1],"i":0},{"p":[12,3],"i":0},{"p":[13,2],"i":0},{"p":[13,1],"i":0},{"p":[21,6],"i":0},{"p":[22,6],"i":0},{"p":[23,6],"i":0},{"p":[24,6],"i":0},{"p":[25,6],"i":0},{"p":[26,7],"i":0},{"p":[27,8],"i":0},{"p":[28,8],"i":0},{"p":[30,8],"i":0},{"p":[31,9],"i":0},{"p":[29,8],"i":0},{"p":[32,9],"i":0},{"p":[34,9],"i":0},{"p":[35,9],"i":0},{"p":[33,9],"i":0},{"p":[26,6],"i":0},{"p":[36,8],"i":0},{"p":[37,8],"i":0},{"p":[38,8],"i":0},{"p":[39,8],"i":0},{"p":[40,7],"i":0},{"p":[40,6],"i":0},{"p":[41,6],"i":0},{"p":[42,6],"i":0},{"p":[43,6],"i":0},{"p":[44,6],"i":0},{"p":[27,7],"i":1},{"p":[28,7],"i":1},{"p":[30,7],"i":1},{"p":[29,7],"i":1},{"p":[31,8],"i":1},{"p":[32,8],"i":1},{"p":[33,8],"i":1},{"p":[34,8],"i":1},{"p":[35,8],"i":1},{"p":[36,7],"i":1},{"p":[37,7],"i":1},{"p":[39,7],"i":1},{"p":[38,7],"i":1},{"p":[19,4],"i":2,"d":{"w":false}},{"p":[-7,-3],"i":2,"d":{"w":false}},{"p":[28,5],"i":0},{"p":[30,5],"i":0},{"p":[32,5],"i":0},{"p":[34,5],"i":0},{"p":[36,5],"i":0},{"p":[43,5],"i":2,"d":{"w":false}},{"p":[32,4],"i":2,"d":{"w":false}},{"p":[45,6],"i":0},{"p":[45,7],"i":0},{"p":[45,10],"i":0},{"p":[46,11],"i":0},{"p":[47,11],"i":0},{"p":[48,11],"i":0},{"p":[49,11],"i":0},{"p":[51,8],"i":0},{"p":[51,9],"i":0},{"p":[51,10],"i":0},{"p":[50,11],"i":0},{"p":[45,9],"i":0},{"p":[45,8],"i":0},{"p":[48,10],"i":3},{"p":[49,10],"i":3},{"p":[47,10],"i":3},{"p":[52,8],"i":0},{"p":[53,8],"i":0},{"p":[54,8],"i":0},{"p":[55,8],"i":0},{"p":[56,8],"i":0},{"p":[57,8],"i":0},{"p":[58,8],"i":0},{"p":[59,8],"i":0},{"p":[54,7],"i":2,"d":{"w":false}},{"p":[-4,-7],"i":0},{"p":[-4,-9],"i":0},{"p":[-3,-9],"i":0},{"p":[-3,-7],"i":0},{"p":[60,7],"i":0},{"p":[60,6],"i":0},{"p":[61,6],"i":0},{"p":[62,6],"i":0},{"p":[63,6],"i":0},{"p":[64,6],"i":0},{"p":[61,5],"i":2,"d":{"w":true}},{"p":[38,5],"i":0},{"p":[-5,-5],"i":0},{"p":[-5,-6],"i":0},{"p":[-5,-7],"i":0},{"p":[-5,-8],"i":0},{"p":[-5,-9],"i":0},{"p":[-2,-5],"i":0},{"p":[-3,-6],"i":0},{"p":[-2,-8],"i":0},{"p":[-13,-5],"i":2,"d":{"w":true}},{"p":[-15,-7],"i":0},{"p":[-11,-9],"i":0},{"p":[57,7],"i":1,"d":{"d":0}},{"p":[56,7],"i":1,"d":{"d":0}},{"p":[59,7],"i":0},{"p":[64,5],"i":0},{"p":[64,3],"i":0},{"p":[64,2],"i":0},{"p":[64,4],"i":0},{"p":[55,7],"i":1,"d":{"d":0}}]
}

const Cool_level:Dictionary = {
	"t":"Cool level","s":[0,4],"m":[{"p":[0,5],"i":0},{"p":[1,5],"i":0},{"p":[2,5],"i":0},{"p":[3,5],"i":0},{"p":[4,5],"i":0},{"p":[5,5],"i":0},{"p":[6,5],"i":0},{"p":[-1,5],"i":0},{"p":[-2,5],"i":0},{"p":[-3,5],"i":0},{"p":[-4,5],"i":0},{"p":[-5,5],"i":0},{"p":[-6,5],"i":0},{"p":[-6,4],"i":0},{"p":[-6,3],"i":0},{"p":[-6,2],"i":0},{"p":[-6,1],"i":0},{"p":[-6,0],"i":0},{"p":[-6,-1],"i":0},{"p":[-6,-2],"i":0},{"p":[-6,-3],"i":0},{"p":[-6,-4],"i":0},{"p":[-6,-5],"i":0},{"p":[-5,-5],"i":0},{"p":[-4,-5],"i":0},{"p":[-3,-5],"i":0},{"p":[-2,-5],"i":0},{"p":[-1,-5],"i":0},{"p":[0,-5],"i":0},{"p":[1,-5],"i":0},{"p":[2,-5],"i":0},{"p":[3,-5],"i":0},{"p":[4,-5],"i":0},{"p":[5,-5],"i":0},{"p":[6,-5],"i":0},{"p":[6,6],"i":0},{"p":[6,7],"i":0},{"p":[6,8],"i":0},{"p":[6,9],"i":0},{"p":[7,9],"i":0},{"p":[8,9],"i":0},{"p":[9,9],"i":0},{"p":[10,9],"i":0},{"p":[11,9],"i":0},{"p":[12,9],"i":0},{"p":[13,9],"i":0},{"p":[14,9],"i":0},{"p":[15,9],"i":0},{"p":[8,5],"i":0},{"p":[10,5],"i":0},{"p":[12,5],"i":0},{"p":[13,8],"i":1},{"p":[12,8],"i":1},{"p":[11,8],"i":1},{"p":[10,8],"i":1},{"p":[9,8],"i":1},{"p":[8,8],"i":1},{"p":[7,8],"i":1},{"p":[14,8],"i":1},{"p":[14,5],"i":0},{"p":[16,9],"i":0},{"p":[17,9],"i":0},{"p":[15,8],"i":1},{"p":[16,8],"i":1},{"p":[16,5],"i":0},{"p":[18,9],"i":0},{"p":[18,8],"i":0},{"p":[18,7],"i":0},{"p":[18,6],"i":0},{"p":[18,5],"i":0},{"p":[17,8],"i":1},{"p":[7,-5],"i":0},{"p":[8,-5],"i":0},{"p":[9,-5],"i":0},{"p":[10,-5],"i":0},{"p":[11,-5],"i":0},{"p":[12,-5],"i":0},{"p":[13,-5],"i":0},{"p":[14,-5],"i":0},{"p":[15,-5],"i":0},{"p":[16,-5],"i":0},{"p":[17,-5],"i":0},{"p":[18,-5],"i":0},{"p":[19,4],"i":2,"d":{"w":false}},{"p":[19,5],"i":0},{"p":[20,5],"i":0},{"p":[20,6],"i":0},{"p":[20,7],"i":0},{"p":[20,9],"i":0},{"p":[19,-5],"i":0},{"p":[19,-4],"i":0},{"p":[19,-3],"i":0},{"p":[20,-3],"i":0},{"p":[21,-3],"i":0},{"p":[21,9],"i":0},{"p":[22,9],"i":0},{"p":[23,9],"i":0},{"p":[24,9],"i":0},{"p":[25,9],"i":0},{"p":[26,9],"i":0},{"p":[27,9],"i":0},{"p":[28,9],"i":0},{"p":[29,9],"i":0},{"p":[22,5],"i":0},{"p":[23,5],"i":0},{"p":[24,5],"i":0},{"p":[23,4],"i":1},{"p":[26,5],"i":0},{"p":[27,5],"i":0},{"p":[28,5],"i":0},{"p":[26,4],"i":1},{"p":[28,4],"i":1},{"p":[30,5],"i":0},{"p":[31,5],"i":0},{"p":[32,5],"i":0},{"p":[31,4],"i":1},{"p":[30,9],"i":0},{"p":[31,9],"i":0},{"p":[32,9],"i":0},{"p":[33,9],"i":0},{"p":[34,9],"i":0},{"p":[34,5],"i":0},{"p":[34,6],"i":0},{"p":[34,7],"i":0},{"p":[34,8],"i":0},{"p":[36,7],"i":0},{"p":[36,6],"i":0},{"p":[36,5],"i":0},{"p":[35,5],"i":0},{"p":[33,8],"i":1},{"p":[32,8],"i":1},{"p":[31,8],"i":1},{"p":[30,8],"i":1},{"p":[29,8],"i":1},{"p":[28,8],"i":1},{"p":[27,8],"i":1},{"p":[26,8],"i":1},{"p":[25,8],"i":1},{"p":[24,8],"i":1},{"p":[23,8],"i":1},{"p":[22,8],"i":1},{"p":[21,8],"i":1},{"p":[20,8],"i":0},{"p":[35,4],"i":2,"d":{"w":false}},{"p":[25,-3],"i":0},{"p":[24,-3],"i":0},{"p":[23,-3],"i":0},{"p":[22,-3],"i":0},{"p":[26,-3],"i":0},{"p":[27,-3],"i":0},{"p":[28,-3],"i":0},{"p":[29,-3],"i":0},{"p":[30,-3],"i":0},{"p":[31,-3],"i":0},{"p":[32,-3],"i":0},{"p":[33,-3],"i":0},{"p":[34,-3],"i":0},{"p":[35,-3],"i":0},{"p":[35,-2],"i":0},{"p":[35,-1],"i":0},{"p":[36,-1],"i":0},{"p":[37,-1],"i":0},{"p":[38,-1],"i":0},{"p":[39,-1],"i":0},{"p":[40,-1],"i":0},{"p":[41,-1],"i":0},{"p":[42,-1],"i":0},{"p":[43,-1],"i":0},{"p":[44,-1],"i":0},{"p":[45,-1],"i":0},{"p":[46,-1],"i":0},{"p":[47,-1],"i":0},{"p":[48,-1],"i":0},{"p":[49,-1],"i":0},{"p":[50,-1],"i":0},{"p":[37,7],"i":0},{"p":[38,7],"i":0},{"p":[39,7],"i":0},{"p":[40,7],"i":0},{"p":[41,7],"i":0},{"p":[42,7],"i":0},{"p":[43,7],"i":0},{"p":[44,7],"i":0},{"p":[45,7],"i":0},{"p":[46,7],"i":0},{"p":[47,7],"i":0},{"p":[48,7],"i":0},{"p":[49,7],"i":0},{"p":[50,7],"i":0},{"p":[51,7],"i":0},{"p":[51,6],"i":0},{"p":[51,5],"i":0},{"p":[52,5],"i":0},{"p":[53,5],"i":0},{"p":[53,6],"i":0},{"p":[53,7],"i":0},{"p":[41,6],"i":3,"d":{"s":100}},{"p":[52,4],"i":2,"d":{"w":false}},{"p":[51,-1],"i":0},{"p":[52,-1],"i":0},{"p":[52,0],"i":0},{"p":[52,1],"i":0},{"p":[53,1],"i":0},{"p":[54,1],"i":0},{"p":[55,1],"i":0},{"p":[56,1],"i":0},{"p":[57,1],"i":0},{"p":[58,1],"i":0},{"p":[59,1],"i":0},{"p":[60,1],"i":0},{"p":[61,1],"i":0},{"p":[54,7],"i":0},{"p":[55,7],"i":0},{"p":[56,7],"i":0},{"p":[57,7],"i":0},{"p":[58,7],"i":0},{"p":[59,7],"i":0},{"p":[60,7],"i":0},{"p":[61,7],"i":0},{"p":[62,7],"i":0},{"p":[63,7],"i":0},{"p":[62,1],"i":0},{"p":[63,1],"i":0},{"p":[64,1],"i":0},{"p":[65,1],"i":0},{"p":[66,1],"i":0},{"p":[67,1],"i":0},{"p":[63,6],"i":1},{"p":[62,6],"i":1},{"p":[61,6],"i":1},{"p":[60,6],"i":1},{"p":[59,6],"i":1},{"p":[58,6],"i":0},{"p":[60,5],"i":0},{"p":[58,4],"i":0},{"p":[60,3],"i":0},{"p":[62,3],"i":0},{"p":[64,3],"i":0},{"p":[67,5],"i":0},{"p":[66,5],"i":0},{"p":[66,6],"i":0},{"p":[66,7],"i":0},{"p":[65,7],"i":0},{"p":[64,7],"i":0},{"p":[68,5],"i":0},{"p":[64,6],"i":1},{"p":[65,6],"i":1},{"p":[67,4],"i":2,"d":{"w":false}},{"p":[67,2],"i":0},{"p":[69,5],"i":0},{"p":[67,3],"i":0},{"p":[68,3],"i":0},{"p":[69,3],"i":0},{"p":[70,3],"i":0},{"p":[71,3],"i":0},{"p":[72,3],"i":0},{"p":[73,3],"i":0},{"p":[71,5],"i":0},{"p":[72,5],"i":0},{"p":[74,5],"i":0},{"p":[75,5],"i":0},{"p":[77,5],"i":0},{"p":[78,5],"i":0},{"p":[74,3],"i":0},{"p":[75,3],"i":0},{"p":[76,3],"i":0},{"p":[77,3],"i":0},{"p":[78,3],"i":0},{"p":[79,3],"i":0},{"p":[79,4],"i":0},{"p":[79,5],"i":0},{"p":[78,4],"i":2,"d":{"w":true}},{"p":[70,5],"i":1},{"p":[73,5],"i":1},{"p":[76,5],"i":1},{"p":[76,6],"i":0},{"p":[73,6],"i":0},{"p":[70,6],"i":0},{"p":[45,6],"i":3,"d":{"s":100}},{"p":[49,6],"i":3,"d":{"s":100}}]
}

const campaighn_maps = [
	default_map,
	tutorial,
	Cool_level,
]



