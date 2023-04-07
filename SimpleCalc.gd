extends Control

func _ready():
	pass

func _process(delta):
	if $screen.text == 'Null':
		$screen.text = 'Error'

## Numbers
func _on_0_pressed():
	add('0')

func _on_1_pressed():
	add('1')

func _on_2_pressed():
	add('2')

func _on_3_pressed():
	add('3')

func _on_4_pressed():
	add('4')
	
func _on_5_pressed():
	add('5')
	
func _on_6_pressed():
	add('6')

func _on_7_pressed():
	add('7')

func _on_8_pressed():
	add('8')

func _on_9_pressed():
	add('9')

## Functions
func _on_div_pressed():
	add('/')

func _on_mul_pressed():
	add('*')

func _on_sub_pressed():
	add('-')

func _on_dec_pressed():
	add('.')

func _on_plus_pressed():
	add('+')

func _on_clear_pressed():
	clear()

func _on_equal_pressed():
	calculate($screen.text)

func _on_screen_text_entered(new_text):
	calculate($screen.text)

## Engines
func calculate(formula):
	var engine = Expression.new()
	engine.parse(formula)
	var result = engine.execute()
	$screen.text = str(result)

func add(element):
	$screen.text += str(element)

func clear():
	$screen.text = ''
