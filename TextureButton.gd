extends TextureButton



var console
var expand_logo
var shrink_logo
var console_begin = Vector2(0, 560)
var expand_console = true


# Called when the node enters the scene tree for the first time.
func _ready():
	console = get_parent()
	shrink_logo = load('res://shrink_arrow.png')
	expand_logo = load('res://expand_arrow.png')
	
	
	


func _pressed():
	if (expand_console):
		print('expand console')
		expand_console = false
		console_begin.y = 300
		get_node('.').texture_normal = shrink_logo
	else:
		print('shrink console')		
		expand_console = true
		console_begin.y = 560
		get_node('.').texture_normal = expand_logo
		
	#console.get_size().y = 100
	console.set_begin(console_begin)
	
