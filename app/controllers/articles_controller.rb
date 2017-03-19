class ArticlesController < ApplicationController
	def index
		#will have template
		@articles = Article.all
	end

	def show
		#will have template
	end

	def new
		#will have template
		@article = Article.new
	end

	def create
		#will save and redirect
		@article = Article.new(allowed_params)

		if @article.save
			redirect_to articles_path
		else
			render 'new'
		end
	end

	def edit
		#will have template
	end

	def update
		#will save and redirect
	end

	def destroy
		#will destroy and redirect
	end

	private
		def allowed_params
			params.require(:article).permit(:word, :length)
		end
end
