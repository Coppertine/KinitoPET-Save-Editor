extends Control
class_name Table

onready var _nodeTableRows : VBoxContainer = get_node("TableMargins/MarginContainer/ScrollContainer/Rows")

func _ready():
	
	pass


func CreateNewDataRow(id, value):
	var newTableRow : TableRow = preload("res://TableRow.tscn").instance() as TableRow
	_nodeTableRows.add_child(newTableRow)
	newTableRow.Set(id, value)
	pass

func GetDataRows():
	var rowValues = {}
	for row in _nodeTableRows.get_children():
		var rowValue = row.Get()
		rowValues[rowValue.keys()[0]] = rowValue[rowValue.keys()[0]]
	return rowValues
	
func get_row_count():
	return _nodeTableRows.get_child_count()
	
func clear_rows():
	for n in _nodeTableRows.get_children():
		_nodeTableRows.remove_child(n)
		n.queue_free()
	pass
