class Item < ActiveRecord::Base
	validates :price, numericality: { greater_than: 0, allow_nil: true }
	validates :name, :description, presence: true

	belongs_to :category

	after_initialize { puts "initialized!" } # Item.new; Item.first
	after_save       { puts "saved" } # Item.save; Item.create; Item.upd_attr
	after_create     { puts "created" }
	after_update     { puts "updated" }
	after_destroy    { puts "destroyed!" } # Item.destroy

end
