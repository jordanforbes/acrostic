require "./partsfunctions"

def constructor
	def random(obj)
		return [rand(0...obj.length)]
	end
	noun = @parts[:noun]
	pronoun = @parts[:pronoun]
	verb = @parts[:verb]
	adverb = @parts[:adverb]
	adjective = @parts[:adjective]
	article = @parts[:article]
	conjunction = @parts[:conjunction]
	preposition = @parts[:preposition]
	interjection = @parts[:interjection]

	 ranoun= random(noun)
	 rapro= random(pronoun)
	 raverb= random(verb)
	 raadv= random(adverb)
	 raadj= random(adjective)
	 raart= random(article)
	 raconj= random(conjunction)
	 raprep= random(preposition)
	 rainter= random(interjection)


	 finword= "#{pronoun[rapro[0]]} #{verb[raverb[0]]} #{conjunction[raconj[0]]} #{article[raart[0]]} #{adjective[raadj[0]]} #{noun[ranoun[0]]}".downcase
	 finword[0]=finword[0].upcase
	 p finword
	 
end

constructor