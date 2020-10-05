extends Node2D

var pressed = false
var active_line


func _ready():
	pass # Replace with function body.


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.pressed :
			pressed = true
			active_line = Line2D.new()
			active_line.default_color = Color("#ffffff")
			active_line.width=10.0
		else :
			pressed = false
			
	if event is InputEventMouseMotion:
		if pressed:
			active_line.add_point(event.position)
			add_child(active_line)
	pass # Replace with function body.
