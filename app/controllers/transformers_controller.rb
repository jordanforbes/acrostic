class TransformersController < ApplicationController
	def index
	end

	def create
	end

	def new
	end

	def edit
	end

	def destroy
	end

	def update
	end

	def show
	end

	def transform
		@transform= Transformer.new.phrase(params[:phrase])
		render "transformer.js.erb"
		# @reroll= Transformer.new.phrase(params[:oldphrase])
		# render "transformer.js.erb"

	end
end
