extends Node2D
export var speed:=100.0
export var downtime:=1.0
export var dir:=1.0
export var elapsed:=0.0
export var down :=false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	if down:
		position.y+=speed*delta
		elapsed+=delta
		if elapsed>=downtime:
			down=false
			elapsed=0
	else:
		position.x+=speed*dir*delta
	if get_child_count()<=2:
		get_tree().change_scene("res://win.tscn")
func _on_leftnotifier_screen_exited():
	dir=1.0
	down=true

func _on_rightnotifier_screen_exited():
	dir=-1.0
	down=true
