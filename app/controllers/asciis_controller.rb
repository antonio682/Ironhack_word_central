
class AsciisController < ApplicationController

	def new
	end

	def create
		text = params[:text_inspection][:user_text]
		@art = Artii::Base.new :font => 'slant'
		@art2 = @art.asciify(text)
		#a.asciify('Art!')
		render :result
	end
end
