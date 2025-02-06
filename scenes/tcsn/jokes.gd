extends Label
	
var joke1 = "Di ka nanalo, may next time pa naman!!!"
var joke2 = "Ilang pitas mo sa bulaklak di ka niya mahal!!!"
var joke3 = "Sorry but pls pay the full price!!!"
var joke4 = "No discount for you!!!"
var joke5 = "Magrerefresh ng website tapos talo rin naman!!!"
var joke6 = "Di ka swerte, baka bukas swerte ka na!!!"
var joke7 = "Kung kaya mo magbackflip may discount ka!!!"
var joke8 = "Meow Meow"
var joke9 = "Sarap sana na may discount!!!"
var joke10 = "Samapalin mo nga yung cashier baka magkadiscount ka!!!"
var array = [joke1, joke2, joke3, joke4, joke5, joke6, joke7, joke8, joke9, joke10]

var rndint = RandomNumberGenerator.new()
	
func _on_ready() -> void:
	rndint.randomize()
	var n = rndint.randi_range(0,9)
	$".".text = array[n]
