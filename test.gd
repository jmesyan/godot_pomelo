extends Button
export(String) var host = "127.0.0.1"
export(int) var port = 10000

#var pomelo

func _ready():
	var pomelo = get_node("/root/global").pomelo
	print(pomelo)
	pomelo.init(host,port)
	#pomelo.on("error",self,"_on_errror")
	#print(pomelo._connect(host,port))
	#print(pomelo.socket.is_connected())
	var root = get_scene().get_root()
	pass


func _on_Button_pressed():
	set_text(get_text()+"a")
	#pomelo._send("1")
	#pomelo.request("gate.gateHandler.queryEntry","aaa",self,"_on_query_entry")
	

func _on_query_entry(msg):
	print(msg)
	
func _on_errror(msg):
	print(msg)
