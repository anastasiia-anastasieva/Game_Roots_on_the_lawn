extends Area2D


# Declare member variables here. Examples:
var vx = 30
var vy = 15

var roots = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("ui_left"):
		vx-=15;
	if event.is_action_pressed("ui_right"):
		vx+=15;
	if event.is_action_pressed("ui_up"):
		vy-=15;
	if event.is_action_pressed("ui_down"):
		vy+=15;
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x+=vx*delta;
	position.y+=vy*delta;
	if position.x>1024-32:
		position.x=1024-32
		vx=-vx
	if position.x<0-32:
		position.x=0-32
		vx=-vx
	if position.y>600-32:
		position.y=600-32
		vy=-vy
	if position.y<0-32:
		position.y=0-32
		vy=-vy
	#if position.x>1024:
	#	position.x=1024
	#	vx=0
	#if position.x<0:
	#	position.x=0
	#	vx=0
	#if position.y>600:
	#	position.y=600
	#	vy=0
	#if position.y<0:
	#	position.y=0
	#	vy=0
	pass


func _on_Player_area_entered(area):
	roots+=1;
	area.queue_free()
	pass # Replace with function body.
