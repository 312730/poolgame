extends Node2D

const Balls = [
	 preload("res://images/0.png"),
	 preload("res://images/1.png"),
	 preload("res://images/2.png"),
	 preload("res://images/3.png"),
	 preload("res://images/4.png"),
	 preload("res://images/5.png"),
	 preload("res://images/6.png"),
	 preload("res://images/7.png"),
	 preload("res://images/8.png"),
	 preload("res://images/9.png"),
	 preload("res://images/10.png"),
	 preload("res://images/11.png"),
	 preload("res://images/12.png"),
	 preload("res://images/13.png"),
	 preload("res://images/14.png"),
	 preload("res://images/15.png")
]
const POS = [
	Vector2(100,300), Vector2(460,300), 
	Vector2(520,270), Vector2(520,330), 
	Vector2(580,300), Vector2(580,360),
	Vector2(580,240), Vector2(640,270),
	Vector2(640,330), Vector2(640,210),
	Vector2(640,390), Vector2(700,300),
	Vector2(700,360), Vector2(700,420),
	Vector2(700,240), Vector2(700,180)
]

onready var ball = preload("res://ball.tscn")

func _ready():
	for i in range(16):
		var b = ball.instance()
		b.id = i
		b.name = "ball"+str(i)
		b.set_position(POS[i])
		b.get_node("sprite").set_texture(Balls[i])
		add_child(b)
		
		

