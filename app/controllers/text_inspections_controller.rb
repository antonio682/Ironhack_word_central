class TextInspectionsController < ApplicationController

	def new
	end

	def create
		@text = params[:text_inspection][:user_text]

		@word_count = @text.split(" ").size
		@reading_time = @word_count.to_f / 256.00
		
  		@most_used_words = @text.split(/\s+/).group_by{|x|x}.map{|x,y|[x,y.size]}.sort_by{|_,size| size}.last(10).reverse
  		render :results

	end
end