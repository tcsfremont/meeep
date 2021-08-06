extends KinematicBody2D
export var good=-1
export var hit=false
export var rate:=2.0
var elapsed:=0.0
onready var Laser=load("res://bananatagslug.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var parent = get_parent()
	if elapsed>=rate:
		var laser=Laser.instance()
		laser.position=position
		parent.add_child(laser)
		elapsed=0.0
	else:
		elapsed+=delta


func _on_VisibilityNotifier2D_screen_exited():
	if not hit:
		get_tree().change_scene("res://lose.tscn")
