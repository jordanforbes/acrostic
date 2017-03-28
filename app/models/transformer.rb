		# require "lolnoop"
		# require_relative "/partsofspeech/nounlibrary"
		# require_relative "/partsofspeech/verblibrary"
		# require_relative "/partsofspeech/adjectivelibrary"
class Transformer 
		require "adverblibrary"
		require "nounlibrary"
		require "verblibrary"
		require "adjectivelibrary"

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
		# h={a:["a11","a12"],b:["b11","b12"]} dummy test variables
		# i={a:["a21","a22"],b:["b21","b22"]}
		inarr= input.split("")
		length= input.length
		x= input
		# lib= ["h","i"]
		lib=["Nounlibrary.new.noun_library","Verblibrary.new.verb_library","Adverblibrary.new.adverb_library","Adjectivelibrary.new.adjective_library"]
		#lib=["Adverblibrary.new.adverb_library"]
		num=0

		#finds a random number based on the length of the library

		fin_arr=[]

		inarr.each do |letter|
			if num>lib.length-1
				num = 0
			end

			if letter != "'" #makes sure that words beginning with an apostrophe don't break the method
				# require "byebug"
				# byebug
				letter_arr= eval(lib[num]+"[:"+letter+"]") #a method which creates an array for each letter out of possible words
				
				r= random(letter_arr)

				unless r == nil
				fin_arr<<letter_arr[r]
				num+=1
				end
			end
			
		fin_arr.join(" ")
		end 
	fin_arr.join(" ")

	end 

	def random(words)
		unless words == nil #makes sure that the words are valid
			return [rand(0...words.length)][0] #returns a random number from 0 to the length of the array entered.
		end

	end
	
end





