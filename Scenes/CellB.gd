class_name CellB extends StaticBody2D

@export_subgroup("Nodes")
@export var waitress: Waitress

func interact():
	waitress.interact()
