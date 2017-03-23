lorem="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

#converts a string into a usable hash library
def converter(input)
	letters={a:"",b:"",c:"",d:"",e:"",f:"",g:"",h:"",i:"",j:"",k:"",l:"",m:"",n:"",o:"",p:"",q:"",r:"",s:"",t:"",u:"",v:"",w:"",x:"",y:"",z:""}
	
	letters.keys.each do |key|
		letter=key[0]

		#p letters.keys.length

		input.split(" ").each do |alpha|
			
			if alpha[0]==letter
				eval("letters[:"+letter+"]")<<alpha+" "
			end
		end
	end
	p letters
end

converter(lorem)