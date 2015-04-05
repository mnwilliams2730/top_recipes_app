class TopRecipesController < ApplicationController

def index
	
	if params[:search]
    	search = params[:search].gsub(' ', '+')
    	request = "http://food2fork.com/api/search?key=bacdbcfbe967bb7611e3b0cce3fcf49a&q=#{search}&sort=r"
    	response = HTTParty.get(request)
    	results = JSON.parse(response.body)
    	#binding.pry
   		@results = results["recipes"]
  	else
    	@results = []
  	end
    
end

end

#http://food2fork.com/api/search?key=bacdbcfbe967bb7611e3b0cce3fcf49a&q=shrimp&sort=r
#http://food2fork.com/api/search?key=bacdbcfbe967bb7611e3b0cce3fcf49a&q=#{search}sort=r