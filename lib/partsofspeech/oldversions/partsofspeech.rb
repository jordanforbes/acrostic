require "./partsfunctions"
require "./adverblibrary"
require "./nounlibrary"
require "./verblibrary"
require "./adjectivelibrary"



#insert a phrase to be acrosticized 
def phrase(phrase)
	w= phrase.split(" ")
	fin_arr=[]
	w.each do |word|

		fin_arr<<randword(word) #calls the randword method on each word in the phrase
	end

	fin_arr.join(" ")
end


#finds a random word for each letter of one word
def randword(input) 
	#letters = converter(@library)
	inarr= input.split("")
	length= input.length
	x= input
	lib= ["@noun_library","@verb_library","@adverb_library","@adjective_library"]
	num=0

	#finds a random number based on the length of the library

	fin_arr=[]

	inarr.each do |l|
		if num>lib.length-1
			num = 0
		end

		if l != "'" #makes sure that words beginning with an apostrophe don't break the method
			
			letter_arr= eval(lib[num]+"[:"+l+"]") #a method which creates an array for each letter out of possible words
			
			r= random(letter_arr)

			unless r == nil
			fin_arr<<letter_arr[r]
			num+=1
			end
		end
		
	end 
	fin_arr.join(" ")


end 

def random(words)
	unless words == nil #makes sure that the words are valid
		return [rand(0...words.length)][0] #returns a random number from 0 to the length of the array entered.
	end

end

p phrase("foobar")



# def constructor
# 	def random(obj)
# 		return [rand(0...obj.length)]
# 	end
# 	noun = @noun_library[:b]
# 	pronoun = @parts[:pronoun]
# 	verb = @verb_library[:a]
# 	adverb = @adverb_library[:a]
# 	adjective = @adjective_library[:a]

# 	article = @parts[:article]
# 	conjunction = @parts[:conjunction]
# 	preposition = @parts[:preposition]
# 	interjection = @parts[:interjection]

	


# 	 finword= "#{pronoun[random(pronoun)[0]]} #{adjective[random(adjective)[0]]} #{noun[random(noun)[0]]} #{conjunction[random(conjunction)[0]]} #{pronoun[random(pronoun)[0]]} #{verb[random(verb)[0]]} #{adjective[random(adjective)[0]]}".downcase
# 	 finword[0]=finword[0].upcase
# 	 p finword
	 
# end

# #constructor
