class Transformer < ApplicationRecord
	# def initialize(input)
	# 	@input = input
	# end

		include Nounable
		include Adjectivable
		include Verbable
		include Adverbable

	def transformer
		# require_relative "/partsofspeech/partsfunctions"
		# require_relative "/partsofspeech/adverblibrary"
		# require_relative "/partsofspeech/nounlibrary"
		# require_relative "/partsofspeech/verblibrary"
		# require_relative "/partsofspeech/adjectivelibrary"


		def phrase(input) 		#insert a phrase to be acrosticized 
			w= self.input.split(" ")
			fin_arr=[]

			w.each do |word|
				fin_arr<<randword(word) #calls the randword method on each word in the phrase
			end

			fin_arr.join(" ")
		end

		def randword(input) 	#finds a random word for each letter of one word

			inarr= input.split("")
			length= input.length
			x= input
			lib= ["@@noun_library","@@verb_library","@@adverb_library","@@adjective_library"]
			num=0

			def random(words) #finds a random number based on the length of the library

				unless words == nil #makes sure that the words are valid
					return [rand(0...words.length)][0] #returns a random number from 0 to the length of the array entered.
				end

			end
			fin_arr=[]

			inarr.each do |l|
				if num>lib.length-1
					num = 0
				end

				if l != "'"
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

		phrase(@input)
	end
end

# Result = Transformer.new("lol")
