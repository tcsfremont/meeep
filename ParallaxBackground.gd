extends ParallaxBackground


export var camra_v:= Vector2(0,100)
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var off=get_scroll_offset()+camra_v* delta
	set_scroll_offset(off)
