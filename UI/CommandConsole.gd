extends VBoxContainer

var commands := {};

func _ready() -> void:
	add_command("help", "help_callback");
	add_command("clear", "clear_callback");

func _on_LineEdit_text_entered(new_text: String) -> void:
	#print(new_text);
	var tokens = new_text.split(" ");
	print(tokens);
	
	$LineEdit.text = "";
	$TextEdit.text += new_text + "\n";
	
	if tokens.size() > 0:
		print("tok: ", tokens[0]);
		if tokens[0] in commands.keys():
			call(commands[tokens[0]], tokens);

func add_command(function_name, callback_function):
	commands[function_name] = callback_function;

func help_callback(tokens) -> void:
	$TextEdit.text += "Command list:\n";
	for cmd in commands:
		$TextEdit.text += "\t" + cmd + "\n";

func clear_callback(tokens) -> void:
	$TextEdit.text = "";
