tool
class_name TableRow
extends HBoxContainer
export var ID : String = ""
export var Value : String = ""

onready var _nodeColumnID : Label = get_node("ColumnID")
onready var _nodeColumnValue : LineEdit = get_node("ColumnValue")

# Called when the node enters the scene tree for the first time.
func _ready():
	Set(ID, Value)
	pass # Replace with function body.

func Set(id, value):
	_nodeColumnID.set_text(id)
	_nodeColumnValue.set_text(value)
	pass
	
func Get():
	var val = {}
	val[_nodeColumnID.get_text()] = _nodeColumnValue.get_text()
	return val
