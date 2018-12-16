class Club < ApplicationRecord
	include PlaceholderConcern

	validates_presence_of :club_name, :sport, :address, :main_image

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= PlaceholderConcern.image_generator(height: '200', width: '350')
	end
end
