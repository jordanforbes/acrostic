require './acrosticlibrary'


#p converter(@library)

def randword(input) #finds a random word for each letter of one word
	#letters = converter(@library)
	inarr= input.split("")
	length= input.length
	x= input


	def random(words)
		return [rand(0...words.length)][0] #returns a random number from 0 to the length of the array entered.

	end
	fin_arr=[]

	inarr.each do |l|
		letter_arr= eval("@letters[:"+l+"]").split(" ") #a method which creates an array for each letter out of possible words
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
#p randword("abba")

p phrase("hello")
