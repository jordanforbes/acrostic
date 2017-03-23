@library={
	a:"
		aal
		aalii
		abseil
		",
		
	b:"
		belie
		belied
		belief
		belief's
		",
	c:"
		car
		cop
		candy
		clock",
	d:"
		dumb
		doctor
		dock",
	e:"earth every easy",
	f:"factor fuck fake",
	g:"god gore gwar",
	h:"hector hack hell",
	i:"insane impossible image",
	j:"jekyl jerk jack jake",
	k:"knife kombat kitchen",
	l:"lock larry label",
	m:"mom moron map max",
	n:"no none never nap",
	o:"optics operation okay",
	p:"people pee peephole periscope",
	q:"quarter quack quality",
	r:"rictor rack rock renegade",
	s:"sarah solve solution slayer",
	t:"television terrible thomas two",
	u:"ultraviolet unbelievable ur",
	v:"very vascular vein vain",
	w:"wary weary wax warp",
	x:"xylophone xavier",
	y:"you your yahoo",
	z:"zyklon zack zord",
}

def randword(input) #finds a random word for each letter of one word
	inarr= input.split("")
	length= input.length
	x= input


	def random(words)
		return [rand(0...words.length)][0] #returns a random number from 0 to the length of the array entered.

	end
	fin_arr=[]

	inarr.each do |l|
		letter_arr= eval("@library[:"+l+"]").split(" ") #a method which creates an array for each letter out of possible words
		r= random(letter_arr)
		fin_arr<<letter_arr[r]
	end 
	fin_arr.join(" ")


end #end randword

def phrase(phrase)
	w= phrase.split(" ")
	fin_arr=[]
	w.each do |word|
		fin_arr<<randword(word)
	end

	fin_arr.join(" ")
end
#randword("abba")

p phrase("abcdefg hijklmn o pqrstuvw xy")

