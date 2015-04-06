class ItemsController < ApplicationController

	def index
		@items = Item.all
		render text: @items.map { |i| "#{i.name}: #{i.price}"}.join("<br/>")
	end

	def show

	end

	def new
		
	end

	def edit
		
	end

	def create
		create text: "item created!"
	end

	def destroy
		
	end

	def update
		
	end

end
