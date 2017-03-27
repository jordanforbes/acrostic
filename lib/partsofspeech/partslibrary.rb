@lib=[
"aardvark N: aardvarks
aback A:
abacus N: abacuses (abaci)
abaft A:
abalone N: abalones
bumptiousness N: ~bumptiousnesses
bumpy A: bumpier  bumpiest
bun N: buns
bunch N: bunches
bunch V: bunched  bunching  bunches
"]

def partsconverter(input)
	parts_library={
		Noun:[],
		Adjective:[],
		Verb:[],
		
		}
	fin_arr=[]
	arr= input.join().split("\n")#[1].split(" ")[1]
	arr.each do |arr|
		part= arr.split(" ")[1]
		if part == "N:"
			noun_split = arr.split("N:").join("").split(" ").join(" ")
			#parts_library[:Noun]<<arr.split("N:").join("").split(" ").join(" ")
			parts_library[:Noun]<<noun_split
			#p parts_library[:Noun]
			#parts_library
		elsif part== "A:"
			parts_library[:Adjective]<<arr.split("A:").join("").split(" ").join(" ")

		elsif part== "V:"
			parts_library[:Verb]<<arr.split("V:").join("").split(" ").join(" ")
		end
	end
	p parts_library
end

partsconverter(@lib)

@library=["aardvark N: aardvarks", "aback A:", "abacus N: abacuses (abaci)", "abaft A:", "abalone N: abalones", "bumptiousness N: ~bumptiousnesses", "bumpy A: bumpier  bumpiest", "bun N: buns", "bunch N: bunches", "bunch V: bunched  bunching  bunches"]

def converter(input)
	letters={a:[],b:[],c:[],d:[],e:[],f:[],g:[],h:[],i:[],j:[],k:[],l:[],m:[],n:[],o:[],p:[],q:[],r:[],s:[],t:[],u:[],v:[],w:[],x:[],y:[],z:[]}
	
	letters.keys.each do |key|
		letter=key[0]

		#p letters.keys.length

		input.each do |alpha|
			
			if alpha[0]==letter
				eval("letters[:"+letter+"]")<<alpha
			end
		end
	end
	p letters
end

#converter(@library)