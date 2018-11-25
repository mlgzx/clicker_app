extends Button

#var num = 15
#var _str = 'string';
#var arr = [1, 15, 'str']
#var obj = {
#     'A' : 15,
#     'B' : 'var',
#     'C' : num 
# };
var _text = 'Text 2 '
#
var counter = 0 
var safe_counter = 0
var counter_time = 0

func onBtnClick():
	var x =get_node('../LineEdit')
	var y = get_node('../LineEdit2')
	
	print(x.get_text())
	counter = counter + 1 
	safe_counter = safe_counter + 1
	print (counter)
	y.text = str(safe_counter)
	pass
	
func _ready():
	 
#	var i = 0
#
#	while i < 10:
#		 i+= 1;
#		 print(i);
#	pass
	
	connect("button_down",self,"onBtnClick")
	counter = 0 
	counter_time = 0



var win_record = 0
var count_period = 1
var level_one = 3
var level_two = 5
var level_three = 7




func _process(delta):
	
	counter_time = counter_time + delta
	var x =get_node('../LineEdit')
	var my_button = get_node('../Button')
	print (counter_time)
	if counter_time > count_period:
		var click_rate = counter / counter_time
		
		if click_rate <= level_one: 
			my_button.text = "PRESS ME"
			my_button.modulate = Color(0.6, 0.6, 0.6, 1 )
		elif (click_rate > level_one) && (click_rate <= level_two):
			my_button.text = "FASTER"
			my_button.modulate = Color(1, 0.0, 0.0, 1 )
		elif (click_rate > level_two) && (click_rate<= level_three):
			my_button.text = "PERFECT"
			my_button.modulate = Color(0.0, 0.0, 1, 1 )
		else:
			my_button.text = "BRILIANT"
			my_button.modulate = Color(0.0, 1, 0.0, 1 )
		
		if win_record < click_rate:
			win_record = click_rate
		get_node('../LineEdit3').text = str(win_record)
		
		
		
		counter = 0 
		counter_time = 0 
		print (click_rate) 
		x.text = str(click_rate)
	
	
	
#func _process(delta):
#	
